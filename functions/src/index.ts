/**
 * Pulsar — Cloud Functions (Phase 1: secure Stripe payments)
 *
 * Security model: the client NEVER computes the amount it pays, and NEVER
 * creates a paid order or a ticket. The server:
 *   1. recomputes the total from canonical Firestore data (events, promo, settings);
 *   2. creates a Stripe Checkout Session + a `pending` order;
 *   3. on the signed Stripe webhook, generates tickets and flips the order to `paid`.
 *
 * Secrets (set via `firebase functions:secrets:set …`, never in code):
 *   - STRIPE_SECRET_KEY
 *   - STRIPE_WEBHOOK_SECRET
 */

import {onCall, onRequest, HttpsError} from "firebase-functions/v2/https";
import {setGlobalOptions} from "firebase-functions/v2";
import {defineSecret} from "firebase-functions/params";
import * as logger from "firebase-functions/logger";
import * as admin from "firebase-admin";
import Stripe from "stripe";

admin.initializeApp();
const db = admin.firestore();

// Hosting & users are in Europe → keep functions close to reduce latency.
setGlobalOptions({region: "europe-west1", maxInstances: 10});

const STRIPE_SECRET_KEY = defineSecret("STRIPE_SECRET_KEY");
const STRIPE_WEBHOOK_SECRET = defineSecret("STRIPE_WEBHOOK_SECRET");

const DEFAULT_ORIGIN = "https://pulsar-7d45e.web.app";

// ── Helpers ────────────────────────────────────────────────────────────────

const num = (v: unknown, d = 0): number =>
  typeof v === "number" ? v : (typeof v === "string" && v.trim() !== "" && !isNaN(+v) ? +v : d);
const int = (v: unknown, d = 0): number => Math.trunc(num(v, d));
const round2 = (v: number): number => Math.round(v * 100) / 100;

/** Extracts the first euro amount from a label like "Bus collectif • 35€". */
function parseEuro(label: unknown): number {
  if (typeof label !== "string") return 0;
  const m = label.match(/(\d+(?:[.,]\d+)?)\s*€/);
  return m ? num(m[1].replace(",", ".")) : 0;
}

interface OrderItem {
  eventId: string;
  eventName: string;
  eventDate: string;
  eventLocation: string;
  eventImageUrl: string | null;
  unitPrice: number;
  quantity: number;
  ticketType: string;
  transportLabel: string | null;
  transportAddon: number;
  accommodationLabel: string | null;
  accommodationAddon: number;
  lineTotal: number;
}

// ── 1. createCheckoutSession (callable) ──────────────────────────────────────

export const createCheckoutSession = onCall(
  {secrets: [STRIPE_SECRET_KEY]},
  async (req) => {
    const token = req.auth?.token;
    if (!token?.email) {
      throw new HttpsError("unauthenticated", "Connexion requise.");
    }
    const email = String(token.email).toLowerCase();
    const promoCodeInput = (req.data?.promoCode as string | undefined)?.trim().toUpperCase() || null;
    const origin = (req.data?.origin as string | undefined) || DEFAULT_ORIGIN;

    // Reject suspended users at the source.
    const userSnap = await db.collection("users").doc(email).get();
    if (userSnap.exists && userSnap.data()?.isSuspended === true) {
      throw new HttpsError("permission-denied", "Compte suspendu.");
    }

    // App settings (tax/fee/maintenance/limits).
    const s = (await db.doc("app_settings/app").get()).data() ?? {};
    if (s.maintenanceMode === true) {
      throw new HttpsError("failed-precondition",
        (s.maintenanceMessage as string) || "Service en maintenance, réessaie plus tard.");
    }
    const taxRate = num(s.taxRate, 0.20);
    const feeRate = num(s.serviceFeeRate, 0.05);
    const maxTickets = int(s.maxTicketsPerOrder, 10);
    const currency = String(s.currencyCode || "EUR").toLowerCase();
    const currencySymbol = String(s.currencySymbol || "€");

    // Recompute the cart from canonical event prices (never trust the client).
    const cartSnap = await db.collection("users").doc(email).collection("cart").get();
    if (cartSnap.empty) throw new HttpsError("failed-precondition", "Panier vide.");

    let subtotal = 0;
    let totalQty = 0;
    const items: OrderItem[] = [];
    for (const doc of cartSnap.docs) {
      const c = doc.data();
      const evSnap = await db.collection("events").doc(doc.id).get();
      if (!evSnap.exists) continue;
      const ev = evSnap.data()!;
      if (ev.isPublished === false) {
        throw new HttpsError("failed-precondition", `Événement indisponible : ${ev.name}`);
      }
      const qty = Math.max(1, int(c.quantity, 1));
      const unit = num(ev.pricingAmount, 0);
      const transportAddon = c.transportOption ? parseEuro(ev.transport) : 0;
      const accommodationAddon = c.accommodationOption ? parseEuro(ev.accommodation) : 0;
      const lineTotal = round2(unit * qty + transportAddon + accommodationAddon);
      subtotal += lineTotal;
      totalQty += qty;
      items.push({
        eventId: doc.id,
        eventName: String(ev.name ?? ""),
        eventDate: String(ev.date ?? ""),
        eventLocation: String(ev.location ?? ""),
        eventImageUrl: (ev.imageUrl as string) ?? null,
        unitPrice: unit,
        quantity: qty,
        ticketType: String(c.ticketType ?? "standard"),
        transportLabel: (c.transportOption as string) ?? null,
        transportAddon,
        accommodationLabel: (c.accommodationOption as string) ?? null,
        accommodationAddon,
        lineTotal,
      });
    }
    if (items.length === 0) throw new HttpsError("failed-precondition", "Panier invalide.");
    if (totalQty > maxTickets) {
      throw new HttpsError("failed-precondition", `Maximum ${maxTickets} billets par commande.`);
    }
    subtotal = round2(subtotal);

    // Validate + apply promo server-side.
    let discount = 0;
    let appliedPromo: string | null = null;
    if (promoCodeInput) {
      const pSnap = await db.collection("promo_codes").doc(promoCodeInput).get();
      if (pSnap.exists) {
        const p = pSnap.data()!;
        const active = p.isActive !== false;
        const notExpired = !p.expiresAt || (p.expiresAt as admin.firestore.Timestamp).toDate() > new Date();
        const maxUses = int(p.maxUses, 0);
        const underQuota = maxUses === 0 || int(p.usedCount, 0) < maxUses;
        const meetsMin = subtotal >= num(p.minSubtotal, 0);
        if (active && notExpired && underQuota && meetsMin) {
          discount = p.discountType === "percent"
            ? subtotal * (num(p.discountValue, 0) / 100)
            : num(p.discountValue, 0);
          discount = round2(Math.min(discount, subtotal));
          appliedPromo = pSnap.id;
        }
      }
    }

    const afterDiscount = subtotal - discount;
    const serviceFee = round2(afterDiscount * feeRate);
    const tax = round2(afterDiscount * taxRate);
    const total = round2(afterDiscount + serviceFee + tax);
    if (total <= 0) throw new HttpsError("failed-precondition", "Montant de commande invalide.");

    const orderId = "ord-" + db.collection("orders").doc().id.substring(0, 8).toLowerCase();

    const stripe = new Stripe(STRIPE_SECRET_KEY.value());
    const session = await stripe.checkout.sessions.create({
      mode: "payment",
      customer_email: email,
      line_items: [{
        quantity: 1,
        price_data: {
          currency,
          unit_amount: Math.round(total * 100),
          product_data: {name: `Commande Pulsar — ${totalQty} billet(s)`},
        },
      }],
      success_url: `${origin}/#/checkout/success?order=${orderId}`,
      cancel_url: `${origin}/#/checkout/cancel?order=${orderId}`,
      metadata: {orderId, customerEmail: email},
    });

    await db.collection("orders").doc(orderId).set({
      customerEmail: email,
      placedAt: admin.firestore.FieldValue.serverTimestamp(),
      subtotal,
      discount,
      serviceFee,
      tax,
      total,
      currency: currencySymbol,
      promoCode: appliedPromo,
      paymentMethod: "card",
      paymentBrand: "stripe",
      paymentLast4: null,
      status: "pending",
      itemCount: totalQty,
      items,
      ticketIds: [],
      stripeSessionId: session.id,
    });

    logger.info("Checkout session created", {orderId, email, total});
    return {orderId, url: session.url};
  });

// ── 2. stripeWebhook (HTTP, signature-verified) ──────────────────────────────

export const stripeWebhook = onRequest(
  {secrets: [STRIPE_SECRET_KEY, STRIPE_WEBHOOK_SECRET]},
  async (req, res) => {
    const stripe = new Stripe(STRIPE_SECRET_KEY.value());
    const sig = req.headers["stripe-signature"];
    let event: Stripe.Event;
    try {
      event = stripe.webhooks.constructEvent(req.rawBody, sig as string, STRIPE_WEBHOOK_SECRET.value());
    } catch (err) {
      logger.error("Webhook signature verification failed", err);
      res.status(400).send("Invalid signature");
      return;
    }

    try {
      if (event.type === "checkout.session.completed") {
        const session = event.data.object as Stripe.Checkout.Session;
        if (session.payment_status === "paid" && session.metadata?.orderId) {
          await fulfillOrder(session.metadata.orderId, session);
        }
      } else if (event.type === "checkout.session.expired") {
        const session = event.data.object as Stripe.Checkout.Session;
        if (session.metadata?.orderId) {
          await db.collection("orders").doc(session.metadata.orderId)
            .set({status: "failed", failureReason: "Session de paiement expirée."}, {merge: true});
        }
      }
    } catch (err) {
      logger.error("Webhook handling error", err);
      res.status(500).send("Handler error");
      return;
    }
    res.json({received: true});
  });

/** Idempotently turns a paid Checkout session into tickets + a `paid` order. */
async function fulfillOrder(orderId: string, session: Stripe.Checkout.Session): Promise<void> {
  const orderRef = db.collection("orders").doc(orderId);
  const orderSnap = await orderRef.get();
  if (!orderSnap.exists) {
    logger.warn("fulfillOrder: order not found", {orderId});
    return;
  }
  const order = orderSnap.data()!;
  if (order.status === "paid") {
    logger.info("fulfillOrder: already fulfilled (idempotent skip)", {orderId});
    return;
  }

  const email = String(order.customerEmail);
  const items = (order.items as OrderItem[]) ?? [];
  const now = admin.firestore.FieldValue.serverTimestamp();
  const batch = db.batch();
  const ticketIds: string[] = [];

  for (const it of items) {
    for (let i = 0; i < it.quantity; i++) {
      const tRef = db.collection("tickets").doc();
      ticketIds.push(tRef.id);
      batch.set(tRef, {
        eventId: it.eventId,
        eventName: it.eventName,
        eventDate: it.eventDate,
        eventLocation: it.eventLocation,
        eventImageUrl: it.eventImageUrl,
        price: it.unitPrice,
        ticketType: it.ticketType,
        status: "confirmed",
        purchaseDate: now,
        qrCodeData: `PULSAR-${tRef.id}-${it.eventId}`,
        chosenTransportLabel: it.transportLabel,
        ownerEmail: email,
        orderId,
      });
    }
    batch.set(db.collection("events").doc(it.eventId), {
      totalTicketsSold: admin.firestore.FieldValue.increment(it.quantity),
      totalRevenue: admin.firestore.FieldValue.increment(round2(it.unitPrice * it.quantity)),
    }, {merge: true});
  }

  batch.set(orderRef, {
    status: "paid",
    ticketIds,
    // last4 would require an extra PaymentIntent/Charge fetch — left null.
    paymentLast4: null,
    stripePaymentIntent:
      typeof session.payment_intent === "string" ? session.payment_intent : null,
    paidAt: now,
  }, {merge: true});

  // Bump user stats (gamification).
  batch.set(db.collection("users").doc(email), {
    eventsBooked: admin.firestore.FieldValue.increment(order.itemCount ?? ticketIds.length),
  }, {merge: true});

  // Enforce promo quota.
  if (order.promoCode) {
    batch.set(db.collection("promo_codes").doc(String(order.promoCode)), {
      usedCount: admin.firestore.FieldValue.increment(1),
    }, {merge: true});
  }

  // Clear the user's cart.
  const cartSnap = await db.collection("users").doc(email).collection("cart").get();
  cartSnap.docs.forEach((d) => batch.delete(d.ref));

  // Phase 3 — order confirmation email (consumed by the Trigger Email extension
  // if installed; harmless otherwise).
  const itemsHtml = items
    .map((i) => `<li>${i.quantity}× ${i.eventName} — ${i.eventDate}</li>`)
    .join("");
  batch.set(db.collection("mail").doc(), {
    to: email,
    message: {
      subject: "✦ Pulsar — Confirmation de ta commande",
      html: `<h2>Merci pour ta commande !</h2>
             <p>Commande <b>${orderId}</b> — total ${order.total} ${order.currency}.</p>
             <ul>${itemsHtml}</ul>
             <p>Retrouve tes billets et leurs QR codes dans l'app Pulsar.</p>`,
    },
  });

  await batch.commit();
  logger.info("Order fulfilled", {orderId, tickets: ticketIds.length});
}
