    App.rooms = App.cable.subscriptions.create('RoomsChannel', {
      received: function(data) {
        return $('body').append(this.renderMessage(data));
        // $('#myModal').modal('show');
      },
      renderMessage: function(data) {
        return "<div id='myModal' class='modal show fade' tabindex='-1' role='dialog'><div id='moving-modal' class='modal-dialog'><div class='modal-content'><div class='modal-header'><h3 class='modal-title'>Someone joined the room</h3></div><div class='modal-body'><span class='close' data-dismiss='alert'>&times;</span></div></div></div></div>"
      }
    })
