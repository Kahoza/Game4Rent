import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Chess", "Dominos", "Monopoly", "Scrabble", "Pictionary", "Connect Four", "Clue", "Uno", "Battleship", "Trivial", "Checkers"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
