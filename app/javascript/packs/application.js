// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")



// External imports
import "bootstrap";
// import 'mapbox-gl/dist/mapbox-gl';

// // Internal imports
import { initMapbox } from 'plugins/init_mapbox';



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
document.addEventListener('turbolinks:load', () => {
  initMapbox();
})

// import { initMapbox } from '../plugins/init_mapbox';
// import { initAutocomplete } from '../plugins/init_autocomplete';
// import { initAutocompleteForUser } from '../plugins/init_autocomplete';

// document.addEventListener('turbolinks:load', () => {
//   // Call your functions here, e.g:
//   // initSelect2();
//   initMapbox();
//   initAutocomplete();
//   initAutocompleteForUser();
// });
