// Fade-in on scroll
const observer = new IntersectionObserver((entries) => {
  entries.forEach((e) => {
    if (e.isIntersecting) {
      e.target.style.opacity = '1';
      e.target.style.transform = 'translateY(0)';
      observer.unobserve(e.target);
    }
  });
}, { threshold: 0.12 });

document.querySelectorAll('.feature-card, .section-title, .download-card').forEach((el) => {
  el.style.opacity = '0';
  el.style.transform = 'translateY(20px)';
  el.style.transition = 'opacity 0.7s ease, transform 0.7s ease';
  observer.observe(el);
});

// Parallax on scroll for orbs
window.addEventListener('scroll', () => {
  const y = window.scrollY;
  document.querySelector('.orb-cyan').style.transform = `translateY(${y * 0.15}px)`;
  document.querySelector('.orb-purple').style.transform = `translateY(${y * -0.1}px)`;
  document.querySelector('.orb-yellow').style.transform = `translateY(${y * 0.08}px)`;
}, { passive: true });
