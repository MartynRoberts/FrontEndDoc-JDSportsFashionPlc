/***

 * --- --- --- --- ---
 * JD Sports Fashion plc
 * IBM WebSphere Commerce Platform
 * Khaleel Mughal
 * --- --- --- --- ---
 * #KINGOFTRAINERS
 * --- --- --- --- ---

**/

// START
// -- Load Program

// VARS
// -- For the system
// -- You can configure as you wish
var globalKOTHeight = jQuery(window).height();
var globalKOTWidth = jQuery(window).width();
var divToResize = jQuery("header");

$.noConflict();
jQuery(document).ready(function ($) {

  // ADDS TRANSITION
  // -- Gives speed and sleek appearance of application
  jQuery('.fademe').fadeIn(2000);	

  // ANIMATIONS
  // -- Also to change tags on IE COMPACT JD site
  jQuery("meta[name=viewport]").remove();
  jQuery.easing.def = "easeInOutSine";
  jQuery.fx.speeds._default = 900;

  // PAGE BUILD
  // -- function at bottom of page, basically gets browserWidth, browserHeight and adds to a div
  setupPage();

  // BUILD LOADERS
  window.onload = function (){
    setupPage();
  }	

  // iPAD AND RESPONSIVE RESIZERS
  // -- Page load and also rotation fixes
  jQuery( window ).resize(function(){	
    setupPage();
  });
  
  // Main setupPage function
  // -- Resizes the div specified to browser in real-time and load
  function setupPage()
  {
    jQuery(divToResize).height( globalKOTHeight );
    jQuery(divToResize).width( globalKOTWidth );
  }

// END
// -- EOF
});
