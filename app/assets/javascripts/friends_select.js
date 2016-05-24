function filterFriends(search_friends) {

}

$('#friend_name').click(function() {
  $.ajax({
    dataType: 'json',
    method: 'GET',
    url: 'users/index',
    success: function (response) {
      search_friends = response.map(function(obj){
        return {
          label: obj.first_name + ", " + obj.last_name,
          value: obj.full_name
        }
      })
      filterFriends(search_friends)
    }
  })
})
