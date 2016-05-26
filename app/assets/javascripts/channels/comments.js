App.messages = App.cable.subscriptions.create('CommentsChannel', {
  received: function(data) {
    return $('#comments_container').append(this.renderComment(data));
  },
  renderComment: function(data) {
    return "<p> <strong>" + data.user + ": </strong>" + data.comment + "<br>" + "<font size="2">"data.timestamp + "</font></p><br>";
  }
});
