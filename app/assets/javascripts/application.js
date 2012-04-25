// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//

//= require modernizr
//= require jquery
//= require jquery_ujs
//= require jquery.easing

$(document).ready(function(){
	var language_top = parseInt($("#language-selector").css("top"));

	$("#current-language").toggle(function(){
		$("#language-selector").animate({
			top: 0
		},1000,"easeOutBounce");
		return false;
	},function(){
		$("#language-selector").animate({
			top: language_top
		},1000,"easeOutBounce");
		return false;
	});

	$("#languages li").click(function(){
		$("#current-language").removeClass().addClass($(this).attr("class"));
		$("#current-language").trigger("click");
	});

});
