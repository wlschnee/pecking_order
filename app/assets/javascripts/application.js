// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require_tree .
//= require jquery-ui/autocomplete

$(document).ready(function(){
$(".location_selector").change(function(){
  if((this).find("location_selector").text() != "selection a location"){
  $("#event_location_attributes_name").attr("disabled", true);
} else {
   $("#event_location_attributes_name").attr("disabled", false);
    }
  })
})