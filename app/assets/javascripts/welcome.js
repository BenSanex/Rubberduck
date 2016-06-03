$(document).ready(function(){

	// Hover swap for login buttons
	$(".student-square").on("mouseenter", function(){
		$(".student-name").stop(true, true).hide();
		$(".student-hover").stop(true, true).fadeIn(100);
	});

	$(".student-square").on("mouseleave", function(){
		$(".student-hover").stop(true, true).hide();
		$(".student-name").stop(true, true).fadeIn(100);
	});

	// $(".student-square").on("click", function(event){
	// 	event.preventDefault();
	// 	$(".login-form").show();
	// });

	$(".mentor-square").on("mouseenter", function(){
		$(".mentor-name").stop(true, true).hide();
		$(".mentor-hover").stop(true, true).fadeIn(100);
	});

	$(".mentor-square").on("mouseleave", function(){
		$(".mentor-hover").stop(true, true).hide();
		$(".mentor-name").stop(true, true).fadeIn(100);
	});

});