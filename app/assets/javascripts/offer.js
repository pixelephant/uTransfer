//= require jquery.validate.min

$(document).ready(function(){

	$.ajax({
	  type: 'POST',
	  url: "/universities/universities_faculties",
		data: {todo: "init"},
	  success: function(resp){
	  	if(resp == 'null'){
	  		return false;
	  	}else{
	  		$("#yes-uni").click();
	  		$.each(resp, function(i, val) {
	  			$("#personals_university_id").val(val.university_id);
	  			$("#major").append("<option value='" + val.id+ "'>" + val.name + "</option>")
  			});
	  	}
	}});

	$("#offer-form").validate({
		submitHandler : function(form){
			$.ajax({
		  		type: 'POST',
		  		url: "/offer/email",
				data: {fields : $("#offer-form").serialize(), gender: $("input:radio[name=gender]:checked").attr("id"), type: $("input:radio[name=type]:checked").attr("id"), uni: $("input:radio[name=uni]:checked").attr("id") },
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
		if($("input[name='uni']:checked").attr("id") != "no-uni"){
			$(".uni-no").hide();
			$(".uni-yes").show();
		}
		else{
			$(".uni-yes").hide();
			$(".uni-no").show();
		}
	});

	$("#personals_university_id, #type input").change(function(){
		id = $("#personals_university_id").val();
		level = $("#type div input:radio[@name=type]:checked").attr("id")

		if(id == ''){
			return false;
		}

		$.ajax({
		  type: 'POST',
		  url: "/universities/universities_faculties",
			data: {id : id, level : level},
		  success: function(resp){
		  	$("#major").html("");
			$.each(resp, function(i, val) {
      			$("#major").append("<option value='" + val.id+ "'>" + val.name + "</option>")
    		});
		}});
	});

});