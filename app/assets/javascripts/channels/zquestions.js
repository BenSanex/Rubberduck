//
// <script src='https://cdn.rawgit.com/admsev/jquery-play-sound/master/jquery.playSound.js'></script>
// <p>
//   Please remember to remove .mp3 file extension.
// </p>
// <button onclick='$.playSound("http://www.noiseaddicts.com/samples_1w72b820/3724")'>Play</button>


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
