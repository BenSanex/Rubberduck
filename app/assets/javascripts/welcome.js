$(document).ready(function(){

	// Hover swap for login buttons
	$(".student-square").on("mouseenter", function(){
		$(".student-hover").show();
		$(".student-name").hide();
	});

	$(".student-square").on("mouseleave", function(){
		$(".student-hover").hide();
		$(".student-name").show();
	});

	$(".mentor-square").on("mouseenter", function(){
		$(".mentor-hover").show();
		$(".mentor-name").hide();
	});

	$(".mentor-square").on("mouseleave", function(){
		$(".mentor-hover").hide();
		$(".mentor-name").show();
	});

});