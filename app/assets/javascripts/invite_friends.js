$("#invitation_send").on('click', function(e) {
    $('#event_for_email').val(window.location.pathname);
    $(this).submit();
    $('#invitation_name').val("");
    $('#invitation_email').val("");
    e.preventDefault();
    e.stopPropagation();
});
