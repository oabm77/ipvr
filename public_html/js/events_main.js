$(document).ready(function(e) {
	var page;
    $('nav div ul li a').click(function() {
        page = $(this).attr('href');
        if(page != 'logout.php') {
        	//$( "object").attr('data',page);
        	$( "img").hide();
        	$( "iframe").show();
	        $( "iframe").attr('src',page);
	        return false; // cancel the event
	    }
    });
});