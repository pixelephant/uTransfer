//= require jquery.validate.min

$(document).ready(function(){

	$("#offer-form").validate({
		submitHandler : function(form){
			$.ajax({
		  		type: 'POST',
		  		url: "/offer/email",
				data: {fields : $("#offer-form").serialize()},
		  		success: function(resp){
					$("#form-wrap").slideUp(600,function(){
						$("#additional").slideDown(600,function(){
							$('html,body').animate({
       							 scrollTop: $("#additional").offset().top},
        					'slow');
						});
					});		
				}
    		});
		}
	});

	$("#additional-form").validate({
		submitHandler : function(form){
			$.ajax({
		  		type: 'POST',
		  		url: "/offer/additional",
				data: {fields : $("#additional-form").serialize()},
		  		success: function(resp){
					$("#additional").slideUp(600,function(){
						$("#thankyou").slideDown(600,function(){
							$('html,body').animate({
       							 scrollTop: $("#thankyou").offset().top},
        					'slow');
						});
					});		
				}
    		});
		}
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

	$("#personals_university_id").change(function(){
		id = $("#personals_university_id").val();
		$.ajax({
		  type: 'POST',
		  url: "/universities/universities_faculties",
			data: {id : id},
		  success: function(resp){
		  	$("#major").html("");
			$.each(resp, function(i, val) {
      			$("#major").append("<option value='" + val.id+ "'>" + val.name + "</option>")
    		});
		}});
	});

});