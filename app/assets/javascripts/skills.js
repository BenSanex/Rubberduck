$(document).ready(function(){
  $(document).on('click','#skill-adder',function() {
    event.preventDefault();
    $('.expertise-form').toggleClass('hidden');
    $('#skill-adder').toggleClass('hidden');
  });
})
