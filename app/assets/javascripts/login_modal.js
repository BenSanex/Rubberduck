$(document).ready(function(){

	$("#main-button").on("click", function(event){
		event.preventDefault();
		$.ajax({
			method: "get",
			url: "login"
		})
		.done(function(response){
			$("#myModal").modal('show');
		});
	});

	$("#mentor-button").on("click", function(event){
		event.preventDefault();
		$.ajax({
			method: "get",
			url: "login"
		})
		.done(function(response){
			$("#myModal").modal('show');
		});
	});

});