$(function() {
  $('#question-link').on('click', function(event){
    event.preventDefault();
    $('#question-form').css('visibility', 'visible');
  });
});
