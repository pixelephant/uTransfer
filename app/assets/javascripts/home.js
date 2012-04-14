//= require jquery.anythingslider
//= require jquery.anythingslider.fx
//= require jquery.color
//= require jquery.flip

function get_random_color() {
    var letters = '0123456789ABCDEF'.split('');
    var color = '#';
    for (var i = 0; i < 6; i++ ) {
        color += letters[Math.round(Math.random() * 15)];
    }
    return color;
}

$(document).ready(function(){
	
	$("#newsletter-form input[type='submit']").click(function(){
		$("#newsletter").flip({
			direction:'tb',
			onEnd: function(){
				$("#newsletter").removeClass("dark-purple").addClass("light-green").html("<h3>Thank you</h3><p>Watch out for our awesome newsletters!</p>");
			}
		});
		return false;
	});
	
	$("#slider").anythingSlider({
		appendControlsTo : ".anythingWindow",
		buildStartStop: false,
		hashtags: false,
		autoPlay: true,
	    delay: 8000,
	    resumeDelay: 8000,
		autoplayDelayed: true,
		pauseOnHover: true,
		animationTime      : 0,
        delayBeforeAnimate : 500,
	    onSlideComplete: function(slider) {
	    	var a = slider.$targetPage.next();
			$("#slider-outer").animate({
				backgroundColor: a.data("color")
			},500);
		}
	}).anythingSliderFx({ 
		'p' : ['left'],
	    'img' : [ 'bottom' ],
		'h2' : ['left'],
		'a' : ['bottom']
	  },{
		stopRepeat : false
	});;

});