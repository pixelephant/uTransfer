$(document).ready(function(){
	
	$("#topic a").click(function(){
		var target = $($(this).attr("href"));
		$('html,body').animate({scrollTop: target.offset().top -10},'slow');
	});

});