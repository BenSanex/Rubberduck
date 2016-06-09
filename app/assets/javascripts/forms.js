$(function() {
  $('#question-link').on('click', function(event){
    event.preventDefault();
    $('#question-form').css('visibility', 'visible');
    $('html, body').animate({
	    scrollTop: $("#focus-here").offset().top
		}, 500);
  });
});