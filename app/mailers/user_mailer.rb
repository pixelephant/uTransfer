class UserMailer < ActionMailer::Base
  default :from => "info@utransferhungary.com"

	def contact_confirmation(contact)
	  recipients 		"info@utransferhungary.com"
	  from 					"info@utransferhungary.com"
	  subject 			"Website contact form - #{contact.why}"
	  #body        :contact => contact
	  body 					"E-mail: " + contact.email + "  Message: " + contact.message
	end

	def offer_confirmation(contact)
		@contact = contact
	  recipients = "apply@utransferhungary.com"
	  from = "apply@utransferhungary.com"
	  subject = "Personal offer from website"
	  #body        :contact => contact
	  mail(:to => recipients, :from => from, :subject => subject)
	end

	def offer_additional(contact)
		@contact = contact
	  recipients = "apply@utransferhungary.com"
	  from = "apply@utransferhungary.com"
	  subject = "Additional informations"
	  #body        :contact => contact
	  mail(:to => recipients, :from => from, :subject => subject)
	end

end
