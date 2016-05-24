// $('#autocomplete').autocomplete({
//     serviceUrl: '/locations/index',
//     onSelect: function (suggestion) {
//         alert('You selected: ' + suggestion.value + ', ' + suggestion.data);
//     }
// });

// $(document).ready(function () {
//   $('#event_location_attributes_name').click(function() {
//     $.ajax({
//       dataType: 'json',
//       moethod: 'GET',
//       url: 'locations/index',
//       success: function (response) {
//         search_locations = response.map(function(obj){
//           return {
//             label: obj.name + ", " + obj.address
//             value: obj.name,
//           }
//         })
//         filterLocations(search_locations)
//       }
//     })
//   })
// })
