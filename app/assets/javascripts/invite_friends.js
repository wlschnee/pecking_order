$("#invitation_send").on('click', function(e) {
    $(this).submit();
    $('#invitation_name').val("");
    $('#invitation_email').val("");
    e.preventDefault();
    e.stopPropagation();
});
