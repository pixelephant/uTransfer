//= require jquery.validate.min

$(document).ready(function(){

	/*$("#offer-form").validate({
		submitHandler : function(form){
			form.submit();
			form.slideUp();
		}
	});*/

	$("#offer-form").submit(function(){
		$(this).parent().slideUp();
		$("#form-side").slideUp();
		$("#additional").slideDown("300",function(){
			$('html, body').animate({ 
      			scrollTop: $('#additional').offset().top 
  			});
		});
		return false;
	});

	$("#no-uni,#yes-uni").change(function(){
		if($("input[name='uni']:checked").attr("id") != "yes-uni"){
			$(".uni-no").hide();
			$(".uni-yes").show();
		}
		else{
			$(".uni-yes").hide();
			$(".uni-no").show();
		}
	});
});