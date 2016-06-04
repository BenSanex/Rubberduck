App.questions = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
    return $('body').append(this.renderMessage(data));
    $('#lightbox').show();
    $(document).on('click','#lightbox', function() {
      $('#lightbox').hide();
    })
  },
  renderMessage: function(data) {
      return "<div id='lightbox'><p>Click to close</p><div id='content'><h3>"+data.title+"</h3><h4>"+data.content+"</h4></div></div>"

  }
});
