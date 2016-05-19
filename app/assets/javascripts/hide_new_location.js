$(document).ready(function(){
  debugger
    $("#event_location_id").change(function(){
      if ($("#event_location_id option:selected").text() != "Make New Location"){
        $(".new_location_form_elements").hide();
      } else {
         $(".new_location_form_elements").show();
      }
    })
})
