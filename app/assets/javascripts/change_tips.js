$(document).ready(function(){
  $("#your_tip").hover(
    function() { 
    $("#edit_button").slideDown();
    $("#delete_button").slideDown();
    console.log("showing"); 
     });
});
