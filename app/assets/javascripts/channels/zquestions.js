$(document).ready(function(){
  var counter = 0
  $(document).on('click','#listen',function(){
    counter += 1
    var $this = $(this);
    $this.button('loading');
    event.preventDefault();
    App.questions = App.cable.subscriptions.create('MessagesChannel', {
      received: function(data) {
        return $('body').append(this.renderMessage(data));
        // $('#myModal').modal('show');
        $().playSound("http://www.noiseaddicts.com/samples_1w72b820/3724");
      },
      renderMessage: function(data) {
        return "<div id='myModal' class='modal show fade' tabindex='-1' role='dialog'><div id='moving-modal' class='modal-dialog'><div class='modal-content'><div class='modal-header'><h3 class='modal-title'>You have a Question!</h3></div><div class='modal-body'><h4>Question:"+data.title+"</h4><p>"+data.content+"</p></div><div class='modal-footer'><a class='btn btn-info' href='/mentor/profile'>Cancel</a><a class='btn btn-primary' href='https://rubberduckapp.herokuapp.com/questions/"+data.url+"'>Enter the classroom!</a></div></div></div></div>"
      }
    })
    if (counter >= 2) {
      location.reload();
    }
})
});
