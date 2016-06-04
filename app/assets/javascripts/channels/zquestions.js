App.questions = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
    return $('.notifications').append(this.renderMessage(data));
  },
  renderMessage: function(data) {
    return "<div> <h3>" + data.title + ": </h3><p>" + data.content + "</p></div>";
  }
});
