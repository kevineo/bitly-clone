$(document).ready(function() {
	$('.header').mouseenter(function() {
		$('.header').fadeTo('slow', 0.5);
	});
	$('.header').mouseleave(function(){
		$('.header').fadeTo('slow', 1);
	});

	$( '.form' ).submit(function( event ) {
	  if ( $( 'input:first' ).val() != 'http' ) {
	    $( 'span' ).text( "Validated..." ).show();
	    return;
	  };
	 
	 $( 'span' ).text( "Not valid!" ).show().fadeOut( 1000 );
	  event.preventDefault();
	});
});
//

//


