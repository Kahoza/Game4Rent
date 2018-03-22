import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Parchis", "Domino", "Cards agains Humanity", "I LOVE YOU", "MY", "BEAR"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
