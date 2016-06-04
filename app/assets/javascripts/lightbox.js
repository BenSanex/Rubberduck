jQuery(document).ready(function($) {

	$('.lightbox_trigger').click(function(e) {
		e.preventDefault();

		var image_href = $(this).attr("href");

		if ($('#lightbox').length > 0) {
			$('#content').html('<img src="' + image_href + '" />');

			$('#lightbox').show();
		}
		else {
			var lightbox =
			'<div id="lightbox">' +
				'<p>Click to close</p>' +
				'<div id="content">' +
					'<img src="' + image_href +'" /><br>' +
					'<a href="https://www.youtube.com/watch?v=eGDBR2L5kzI">PRACTICE!</a>'
				'</div>' +
			'</div>';

			$('body').append(lightbox);
		}
	$(document).on('click','#lightbox', function() {
		$('#lightbox').hide();
	});
	});


});
