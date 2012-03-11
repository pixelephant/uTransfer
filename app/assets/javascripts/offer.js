//= require jquery.validate.min

$(document).ready(function(){

	$("#offer-form").validate();

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