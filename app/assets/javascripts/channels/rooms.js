App.rooms = App.cable.subscriptions.create('RoomsChannel', {
  received: function(data) {
    $('body').append(this.renderMessage(data));
  }
  renderMessage: function(data) {
    return "<div id='myOtherModal' class='modal show fade' tabindex='-1' role='dialog'><div id='moving-modal' class='modal-dialog'><div class='modal-content'><div class='modal-body'><h4>"+data.username+"has joined the room.</h4></div></div></div></div>"
  }
});
