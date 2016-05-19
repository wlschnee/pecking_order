$(document).ready(function(){
  if($('.edit_event').length > 0) {
    $('.new_location_form_elements').hide()
    $('input#event_location_attributes_name').val("")
    $('input#event_location_attributes_address').val("")
  } else {
    $("#event_location_id").change(function(){
      if ($("#event_location_id option:selected").text() != "Make New Location"){
        $(".new_location_form_elements").hide();
      } else {
         $(".new_location_form_elements").show();
      }
    })
  }
})
