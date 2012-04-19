//= require jquery.validate.min

$(document).ready(function(){
	
	$("#contact-form").validate({
		submitHandler : function(form){
			$.ajax({
		  		type: 'POST',
		  		url: "/contact/email",
				data: {fields : $("#contact-form").serialize()},
		  		success: function(resp){
					$("#form-wrap").slideUp(300,function(){
						$("#thankyou").slideDown(300,function(){
							$('html,body').animate({
       							 scrollTop: $("#thankyou").offset().top},
        					'slow');
						});
					});		
				}
    		});
		}
	});
		
});