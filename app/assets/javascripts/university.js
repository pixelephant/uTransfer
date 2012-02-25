//= require jquery.easing
//= require jquery.anythingslider
//= require jquery.anythingslider.fx
//= require jquery.touchwipe
//= require jquery.countdown
//= require jquery.countdown-zh-CN




$(document).ready(function(){
	
	$.countdown.regional['zh-CN'] = {
		labels: ['年', '月', '周', '天', '时', '分', '秒'],
		labels1: ['年', '月', '周', '天', '时', '分', '秒'],
		compactLabels: ['年', '月', '周', '天'], compactLabels1: ['年', '月', '周', '天'],
		whichLabels: null,
		timeSeparator: ':', isRTL: false};
	$.countdown.setDefaults($.countdown.regional['zh-CN']);
	
	$("#university-slider").anythingSlider({
		appendControlsTo : ".anythingWindow",
		buildStartStop: false,
		buildNavigation: false,
		hashtags: false,
		autoPlay: false,
	    delay: 8000,
	    resumeDelay: 8000,
	    animationTime: 500,
	    onSlideComplete: function(slider) {
			
		}
	}).anythingSliderFx({
		'.one' : ['right','1200px','1000'],
		'.two' : ['right','1300px','1200'],
		'.three' : ['right','1400px','1300'],
		'.four' : ['right','1500px','1400']
	  });;

/*	$("#univesity-slider-wrap").touchwipe({
	     wipeLeft: function() { $(".forward").trigger("click"); },
	     wipeRight: function() { $(".back").trigger("click"); },
	     min_move_x: 20,
	     min_move_y: 20,
	     preventDefaultEvents: false
	}); */
	
	var austDay = new Date();
	austDay = new Date(austDay.getFullYear() + 1, 1 - 1, 26);
	$('#countdown').countdown({until: austDay});
	$('#deadline span').text(austDay.getFullYear() + " " + austDay.getMonth() + 1 + " " + austDay.getDate());
	
	$("#faculty-grid .box").click(function(){
		var $this = $(this);
		
		if($this.hasClass("open")){
			return;
		}
		
		$this.addClass("gray-green");
		$this.addClass("open");
		$(this).animate({
			width:895,
			height:400
		},1000,function(){
			$('html,body').animate({scrollTop: $this.offset().top -10},'slow');
			$this.find("a.button").addClass("close").html("Close");
		});
	});
	
	$("#faculty-grid .box.open a.close").live("click",function(){
		var $this = $(this);
		$this.parent(".box").animate({
			width:265,
			height:225
		},1000,function(){
			$('html,body').animate({scrollTop: $this.parent(".box").offset().top -10},'slow');
			$this.removeClass("close").html("More info");
			$this.parent(".box").removeClass("gray-green").removeClass("open");
		});
	});
	
});