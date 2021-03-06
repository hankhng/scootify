// app/javascript/components/banner.js
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const text = document.getElementById('banner-typed-text');
  if (text) {
    new Typed('#banner-typed-text', {
      strings: ["Live the city as a local", "Your scooter in 3, 2, 1..."],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
