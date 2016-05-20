$("div.search_results").append("<%= j render partial: 'events/search_results', locals: {results: @results} %>" )
  $('.result').on('click', function() {
    var current_id = $(this).attr('id')
    if ($('#event_location_attributes_id').val() != 'Make New Location') {
      $('#event_location_attributes_id').val('Make New Location')
      $('.new_location_form_elements').show()
    }
    $('#event_location_attributes_name').val($('#name_' + current_id).text())
    $('#event_location_attributes_address').val($('#address_' + current_id).text())
  })
