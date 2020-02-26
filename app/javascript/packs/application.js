import "bootstrap";
// app/javascript/packs/application.js
import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

import "../plugins/flatpickr";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
