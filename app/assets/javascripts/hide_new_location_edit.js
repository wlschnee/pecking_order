$(document).ready(function(){
    $('input#event_location_attributes_name').val("")
    $('input#event_location_attributes_address').val("")
    $("#event_location_attributes_id").change(function(){
      if ($("#event_location_attributes_id option:selected").text() != "Make New Location"){
        $(".new_location_form_elements").hide();
      } else {
         $(".new_location_form_elements").show();
      }
    })
})
