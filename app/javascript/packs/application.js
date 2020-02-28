import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import "../plugins/flatpickr";
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import "../components/price_calculator";
import { initMapbox } from '../plugins/init_mapbox';
import { loadDynamicBannerText } from '../components/banner';
import { initAutocomplete } from '../plugins/init_autocomplete';
/*import { injectCoordinates } from '../plugins/init_mapbox';
import { injectMap } from '../plugins/init_mapbox';*/

// import star
//import { initStarRating } from '../plugins/init_star_rating';

$(".alert" ).fadeOut(5000);

initMapbox();
loadDynamicBannerText();
initAutocomplete();
//initStarRating();



// // TODO: Write your JS code in here
// import { injectCoordinates, injectMap } from './geocode';

// const formElement = document.getElementById('searchForm');
// formElement.addEventListener('submit', (event) => {
//   // prevent form's default behavior
//   event.preventDefault();

//   // get input value
//   const address = document.getElementById('address').value;
//   const mapboxKey = 'pk.eyJ1IjoiaGFua2huZyIsImEiOiJjazczZzRrNTEwY3I2M2VxZ3FpdWQwNGYyIn0.edpSbbasfNXr8zRs94dC7A';
//   // trigger request to Google Maps API
//   fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${address}.json?access_token=${mapboxKey}`)
//     .then(response => response.json())
//     .then((data) => {
//       const coordinates = {
//         lng: data.features[0].geometry.coordinates[0],
//         lat: data.features[0].geometry.coordinates[1]
//       };
//       injectCoordinates(coordinates);
//       injectMap(coordinates);
//     });
// });
