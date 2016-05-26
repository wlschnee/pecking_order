$('#menu_invite_button').on('click', function(){
  $('div.email-form#main-view-email-form').slideToggle();
  $(this).on("submit", function() {
    $('div.email-form#main-view-email-form').slideToggle();
  })
})
