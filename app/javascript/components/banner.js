import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.querySelector("#banner-typed-text")
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["A knightly service with painfully low prices!"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
