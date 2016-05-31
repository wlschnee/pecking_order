$(function() {
  $('#select_users').selectize({
    persist: false,
    maxItems: null,
    valueField: 'email',
    labelField: 'name',
    options: '/users',
    render: {
      item: function(item, escape) {
        return '<div>' +
          (item.full_name ? '<span class="name">' + escape(item.full_name) + '</span>' : '') +
          (item.email ? '<span class="email">' + escape(item.email) + '</span>' : '') +
          '<div>'
      }
    }
  })
})
