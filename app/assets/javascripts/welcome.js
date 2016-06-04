$(document).ready(function(){

	// Hover swap for login buttons
	$("role-square").on("mouseenter", function(){
		$("role-name").stop(true, true).hide();
		$("role-hover").stop(true, true).fadeIn(100);
	});

	$("role-square").on("mouseleave", function(){
		$("role-hover").stop(true, true).hide();
		$("role-name").stop(true, true).fadeIn(100);
	});

});