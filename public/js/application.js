$(document).ready(function(params) {
	$('.header').mouseenter(function() {
		$('.header').fadeTo('fast', 1);
	});
	$('.header').mouseleave(function(){
		$('.header').fadeTo('fast', 0.5);
	});
});