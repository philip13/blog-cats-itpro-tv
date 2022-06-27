/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


import Rails from "@rails/ujs";
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage";
global.$ = require('jquery')
// import "channels";

Rails.start();
Turbolinks.start();
ActiveStorage.start();


// require("@rails/ujs").start();
// require("turbolinks").start();
// require("@rails/activestorage").start();
// require("channels");
require("stylesheets/application.scss");


$(document).on('turbolinks:load', function() {
  
  const btn = document.querySelector("button.mobile-menu-button");
  const menu = document.querySelector(".mobile-menu");

  btn.addEventListener("click", () => {
    menu.classList.toggle("hidden");
  });
  
  const closeAlertMsg = document.querySelector(".close-alert-msg");
  if(closeAlertMsg){
    closeAlertMsg.addEventListener("click", () => { 
      closeAlertMsg.parentElement.parentElement.remove()
    });
  }

  $("[data-input]").click(function () {
      var text = $(this).val($(this).attr("data-input"))[0].value;
      $("#"+text).click();
  });
});
