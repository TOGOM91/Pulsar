import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @appName.
  ///
  /// In fr, this message translates to:
  /// **'Flowee'**
  String get appName;

  /// No description provided for @home.
  ///
  /// In fr, this message translates to:
  /// **'Accueil'**
  String get home;

  /// No description provided for @explore.
  ///
  /// In fr, this message translates to:
  /// **'Explorer'**
  String get explore;

  /// No description provided for @tickets.
  ///
  /// In fr, this message translates to:
  /// **'Billets'**
  String get tickets;

  /// No description provided for @profile.
  ///
  /// In fr, this message translates to:
  /// **'Profil'**
  String get profile;

  /// No description provided for @settings.
  ///
  /// In fr, this message translates to:
  /// **'Paramètres'**
  String get settings;

  /// No description provided for @search.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher'**
  String get search;

  /// No description provided for @searchEvents.
  ///
  /// In fr, this message translates to:
  /// **'Recherche ton événement...'**
  String get searchEvents;

  /// No description provided for @allGenres.
  ///
  /// In fr, this message translates to:
  /// **'Tous'**
  String get allGenres;

  /// No description provided for @rock.
  ///
  /// In fr, this message translates to:
  /// **'Rock'**
  String get rock;

  /// No description provided for @electro.
  ///
  /// In fr, this message translates to:
  /// **'Électro'**
  String get electro;

  /// No description provided for @spectacles.
  ///
  /// In fr, this message translates to:
  /// **'Spectacles'**
  String get spectacles;

  /// No description provided for @cultural.
  ///
  /// In fr, this message translates to:
  /// **'Culturel'**
  String get cultural;

  /// No description provided for @gaming.
  ///
  /// In fr, this message translates to:
  /// **'Gaming'**
  String get gaming;

  /// No description provided for @sport.
  ///
  /// In fr, this message translates to:
  /// **'Sport'**
  String get sport;

  /// No description provided for @trending.
  ///
  /// In fr, this message translates to:
  /// **'En tendance'**
  String get trending;

  /// No description provided for @upcoming.
  ///
  /// In fr, this message translates to:
  /// **'Prochainement'**
  String get upcoming;

  /// No description provided for @exploreAll.
  ///
  /// In fr, this message translates to:
  /// **'Tout explorer'**
  String get exploreAll;

  /// No description provided for @fullCalendar.
  ///
  /// In fr, this message translates to:
  /// **'Calendrier complet'**
  String get fullCalendar;

  /// No description provided for @addToCart.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter'**
  String get addToCart;

  /// No description provided for @bookNow.
  ///
  /// In fr, this message translates to:
  /// **'Réserver maintenant'**
  String get bookNow;

  /// No description provided for @myCart.
  ///
  /// In fr, this message translates to:
  /// **'Mon panier'**
  String get myCart;

  /// No description provided for @total.
  ///
  /// In fr, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @emptyCart.
  ///
  /// In fr, this message translates to:
  /// **'Votre panier est vide'**
  String get emptyCart;

  /// No description provided for @bookingConfirmed.
  ///
  /// In fr, this message translates to:
  /// **'Réservation confirmée !'**
  String get bookingConfirmed;

  /// No description provided for @noTickets.
  ///
  /// In fr, this message translates to:
  /// **'Aucun billet pour le moment'**
  String get noTickets;

  /// No description provided for @confirmed.
  ///
  /// In fr, this message translates to:
  /// **'Confirmé'**
  String get confirmed;

  /// No description provided for @transport.
  ///
  /// In fr, this message translates to:
  /// **'Transport'**
  String get transport;

  /// No description provided for @accommodation.
  ///
  /// In fr, this message translates to:
  /// **'Hébergement'**
  String get accommodation;

  /// No description provided for @savings.
  ///
  /// In fr, this message translates to:
  /// **'Économie'**
  String get savings;

  /// No description provided for @packComplete.
  ///
  /// In fr, this message translates to:
  /// **'Pack complet'**
  String get packComplete;

  /// No description provided for @speciallyForYou.
  ///
  /// In fr, this message translates to:
  /// **'Spécialement pour toi'**
  String get speciallyForYou;

  /// No description provided for @possibleSavings.
  ///
  /// In fr, this message translates to:
  /// **'Économies possibles'**
  String get possibleSavings;

  /// No description provided for @avoidableCO2.
  ///
  /// In fr, this message translates to:
  /// **'CO₂ évitables'**
  String get avoidableCO2;

  /// No description provided for @averagePrice.
  ///
  /// In fr, this message translates to:
  /// **'Prix moyen'**
  String get averagePrice;

  /// No description provided for @emissions.
  ///
  /// In fr, this message translates to:
  /// **'Émissions'**
  String get emissions;

  /// No description provided for @bookingTime.
  ///
  /// In fr, this message translates to:
  /// **'Réservation'**
  String get bookingTime;

  /// No description provided for @eventsCount.
  ///
  /// In fr, this message translates to:
  /// **'Événements'**
  String get eventsCount;

  /// No description provided for @co2Saved.
  ///
  /// In fr, this message translates to:
  /// **'CO₂ évités'**
  String get co2Saved;

  /// No description provided for @moneySaved.
  ///
  /// In fr, this message translates to:
  /// **'Économies'**
  String get moneySaved;

  /// No description provided for @topUsers.
  ///
  /// In fr, this message translates to:
  /// **'Utilisateurs'**
  String get topUsers;

  /// No description provided for @myPreferences.
  ///
  /// In fr, this message translates to:
  /// **'Mes préférences'**
  String get myPreferences;

  /// No description provided for @myImpact.
  ///
  /// In fr, this message translates to:
  /// **'Mon impact'**
  String get myImpact;

  /// No description provided for @memberSince.
  ///
  /// In fr, this message translates to:
  /// **'Membre depuis {year}'**
  String memberSince(String year);

  /// No description provided for @heroLine1.
  ///
  /// In fr, this message translates to:
  /// **'L\'événement de'**
  String get heroLine1;

  /// No description provided for @heroLine2.
  ///
  /// In fr, this message translates to:
  /// **'tes '**
  String get heroLine2;

  /// No description provided for @heroHighlight.
  ///
  /// In fr, this message translates to:
  /// **'rêves'**
  String get heroHighlight;

  /// No description provided for @heroLine3.
  ///
  /// In fr, this message translates to:
  /// **'sans la galère'**
  String get heroLine3;

  /// No description provided for @heroSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Transport intelligent, hébergement optimisé, impact carbone réduit. Tout ce qu\'il te faut pour vivre ton événement parfait.'**
  String get heroSubtitle;

  /// No description provided for @newEventsThisWeek.
  ///
  /// In fr, this message translates to:
  /// **'{count} nouveaux événements cette semaine'**
  String newEventsThisWeek(int count);

  /// No description provided for @login.
  ///
  /// In fr, this message translates to:
  /// **'Connexion'**
  String get login;

  /// No description provided for @signup.
  ///
  /// In fr, this message translates to:
  /// **'Inscription'**
  String get signup;

  /// No description provided for @email.
  ///
  /// In fr, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In fr, this message translates to:
  /// **'Mot de passe'**
  String get password;

  /// No description provided for @forgotPassword.
  ///
  /// In fr, this message translates to:
  /// **'Mot de passe oublié ?'**
  String get forgotPassword;

  /// No description provided for @orContinueWith.
  ///
  /// In fr, this message translates to:
  /// **'Ou continuer avec'**
  String get orContinueWith;

  /// No description provided for @continueWithGoogle.
  ///
  /// In fr, this message translates to:
  /// **'Continuer avec Google'**
  String get continueWithGoogle;

  /// No description provided for @continueWithApple.
  ///
  /// In fr, this message translates to:
  /// **'Continuer avec Apple'**
  String get continueWithApple;

  /// No description provided for @logout.
  ///
  /// In fr, this message translates to:
  /// **'Se déconnecter'**
  String get logout;

  /// No description provided for @darkMode.
  ///
  /// In fr, this message translates to:
  /// **'Mode sombre'**
  String get darkMode;

  /// No description provided for @language.
  ///
  /// In fr, this message translates to:
  /// **'Langue'**
  String get language;

  /// No description provided for @notifications.
  ///
  /// In fr, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @favorites.
  ///
  /// In fr, this message translates to:
  /// **'Favoris'**
  String get favorites;

  /// No description provided for @history.
  ///
  /// In fr, this message translates to:
  /// **'Historique'**
  String get history;

  /// No description provided for @ecoScore.
  ///
  /// In fr, this message translates to:
  /// **'Éco-score'**
  String get ecoScore;

  /// No description provided for @carbonFootprint.
  ///
  /// In fr, this message translates to:
  /// **'Empreinte carbone'**
  String get carbonFootprint;

  /// No description provided for @lowCarbon.
  ///
  /// In fr, this message translates to:
  /// **'Bas carbone'**
  String get lowCarbon;

  /// No description provided for @festival.
  ///
  /// In fr, this message translates to:
  /// **'Festival'**
  String get festival;

  /// No description provided for @concert.
  ///
  /// In fr, this message translates to:
  /// **'Concert'**
  String get concert;

  /// No description provided for @salon.
  ///
  /// In fr, this message translates to:
  /// **'Salon'**
  String get salon;

  /// No description provided for @days.
  ///
  /// In fr, this message translates to:
  /// **'{count} jours'**
  String days(int count);

  /// No description provided for @oneEvening.
  ///
  /// In fr, this message translates to:
  /// **'1 soir'**
  String get oneEvening;

  /// No description provided for @freeTransport.
  ///
  /// In fr, this message translates to:
  /// **'Transport gratuit'**
  String get freeTransport;

  /// No description provided for @cancel.
  ///
  /// In fr, this message translates to:
  /// **'Annuler'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In fr, this message translates to:
  /// **'Confirmer'**
  String get confirm;

  /// No description provided for @delete.
  ///
  /// In fr, this message translates to:
  /// **'Supprimer'**
  String get delete;

  /// No description provided for @share.
  ///
  /// In fr, this message translates to:
  /// **'Partager'**
  String get share;

  /// No description provided for @export.
  ///
  /// In fr, this message translates to:
  /// **'Exporter'**
  String get export;

  /// No description provided for @filter.
  ///
  /// In fr, this message translates to:
  /// **'Filtrer'**
  String get filter;

  /// No description provided for @sortBy.
  ///
  /// In fr, this message translates to:
  /// **'Trier par'**
  String get sortBy;

  /// No description provided for @price.
  ///
  /// In fr, this message translates to:
  /// **'Prix'**
  String get price;

  /// No description provided for @date.
  ///
  /// In fr, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @distance.
  ///
  /// In fr, this message translates to:
  /// **'Distance'**
  String get distance;

  /// No description provided for @popularity.
  ///
  /// In fr, this message translates to:
  /// **'Popularité'**
  String get popularity;

  /// No description provided for @noResults.
  ///
  /// In fr, this message translates to:
  /// **'Aucun résultat'**
  String get noResults;

  /// No description provided for @retry.
  ///
  /// In fr, this message translates to:
  /// **'Réessayer'**
  String get retry;

  /// No description provided for @offline.
  ///
  /// In fr, this message translates to:
  /// **'Mode hors-ligne'**
  String get offline;

  /// No description provided for @offlineMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vous êtes actuellement hors-ligne. Certaines fonctionnalités sont limitées.'**
  String get offlineMessage;

  /// No description provided for @budgetMax.
  ///
  /// In fr, this message translates to:
  /// **'Budget max'**
  String get budgetMax;

  /// No description provided for @location.
  ///
  /// In fr, this message translates to:
  /// **'Localisation'**
  String get location;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
