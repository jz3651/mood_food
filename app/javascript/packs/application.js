// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("textillate")
require("lettering.js")
require("animate.css")
require("tippy.js")
require("easydropdown")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import easydropdown from 'easydropdown';
import tippy from 'tippy.js';
import 'tippy.js/dist/tippy.css'; // optional for styling
window.tippy = tippy;

import AOS from 'aos';
import 'aos/dist/aos.css'; // You can also use <link> for styles
// ..
AOS.init();

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

import { rotateTerm } from '../components/title-animation';
// import {scrollFromTop} from '../components/page-scroll-color'
import { scroll_change } from '../components/page-scroll-color';
import { likeBtnAnimated } from '../components/like-animation';
import { initMapbox } from '../plugins/init_mapbox';
import { initToggleMap } from '../plugins/map_restaurant_toggle';
import { turbolinkScroll } from '../components/turbolink-scroll';
import { dropDownStyle } from '../components/mood-dropdown';
Turbolinks.scroll = {};

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  likeBtnAnimated();
  initToggleMap();
  turbolinkScroll();
  dropDownStyle();
});
