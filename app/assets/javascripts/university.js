//= require jquery.easing
//= require jquery.countdown
//= require jquery.fancybox




$(document).ready(function(){
	
/*	$.countdown.regional['zh-CN'] = {
		labels: ['年', '月', '周', '天', '时', '分', '秒'],
		labels1: ['年', '月', '周', '天', '时', '分', '秒'],
		compactLabels: ['年', '月', '周', '天'], compactLabels1: ['年', '月', '周', '天'],
		whichLabels: null,
		timeSeparator: ':', isRTL: false};
	$.countdown.setDefaults($.countdown.regional['zh-CN']);*/
	
	$("#bsc a,#msc a,#phd a").click(function(){
		console.log($($(this).attr("href")));
		$('html,body').animate({scrollTop: $($(this).attr("href")).offset().top -10},'slow');
	});
	
	
	/*$("#university-slider").anythingSlider({
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
	  });;*/
	
	var austDay = new Date();
	austDay = new Date(austDay.getFullYear() + 1, 1 - 1, 26);
	$('#countdown').countdown({until: austDay});
	$('#deadline span').text(austDay.getFullYear() + " " + austDay.getMonth() + 1 + " " + austDay.getDate());
	
	
	$(".more-link").fancybox({
		openEffect : "elastic",
		closeEffect : "elastic",
		padding: 0,
		fitToView: true
	});
	
/*	$("#faculty-grid .box a.button").click(function(){
		var $this = $(this).parent();
		
		if($this.hasClass("open")){
			return;
		}
		
		$this.addClass("gray-green");
		$this.addClass("open");
		var h = $this.find(".more-info").height();
		$this.animate({
			width:895,
			height:225 + h/2
		},1000,function(){
			$('html,body').animate({scrollTop: $this.offset().top -10},'slow');
			$this.find("a.button").addClass("close").html("Close");
		});
	});*/
	
/*	$("#faculty-grid .box.open a.close").live("click",function(){
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
	*/
	
});