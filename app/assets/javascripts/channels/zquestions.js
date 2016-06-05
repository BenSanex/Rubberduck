App.questions = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
    return $('body').append(this.renderMessage(data));
    $('#lightbox').show();
    $(document).on('click','#lightbox', function() {
      $('#lightbox').hide();
    });
  },
  renderMessage: function(data) {
      return "<div id='outside-lightbox'><div id='lightbox'><p>Click to close</p><div id='content'><h2>You have a Question!</h2><h3>"+data.title+":</h3><h4>"+data.content+"</h4><img src='/assets/logo'><br><a href='/questions/"+data.url+"'>Enter the classroom!</a></div></div></div>"
  }
});
