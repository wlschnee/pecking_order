App.messages = App.cable.subscriptions.create('CommentsChannel', {  
  received: function(data) {
    return $('#comments').append(this.renderComment(data));
  },
  renderComment: function(data) {
    return "<p> <strong>" + data.user + ": </strong>" + data.comment + "</p><br>";
  }
});