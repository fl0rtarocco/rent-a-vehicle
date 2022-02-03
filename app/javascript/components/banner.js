import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["A knightly service with painfully low prices!"],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };
