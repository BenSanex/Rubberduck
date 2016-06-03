$(document).ready(function(){

	// Hover swap for login buttons
	$(".student-square").on("mouseenter", function(){
		$(".student-name").stop(true, true).fadeOut(100);
		$(".student-hover").stop(true, true).fadeIn("slow");
	});

	$(".student-square").on("mouseleave", function(){
		$(".student-hover").stop(true, true).hide();
		$(".student-name").stop(true, true).fadeIn("slow");
	});

		$(".mentor-square").on("mouseenter", function(){
		$(".mentor-name").stop(true, true).fadeOut(100);
		$(".mentor-hover").stop(true, true).fadeIn("slow");
	});

	$(".mentor-square").on("mouseleave", function(){
		$(".mentor-hover").stop(true, true).hide();
		$(".mentor-name").stop(true, true).fadeIn("slow");
	});

});