class UserMailer < ActionMailer::Base
  default :from => "test@utransferhungary.com"

	def contact_confirmation(contact)
	  recipients 		"test@utransferhungary.com"
	  from 					contact.email
	  subject 			"Website contact form [#{contact.why}]"
	  #body        :contact => contact
	  body 					contact.message
	end

	def offer_confirmation(contact)
		@contact = contact
	  recipients = "test@utransferhungary.com"
	  from = contact.email
	  subject = "Personal offer from website"
	  #body        :contact => contact
	  mail(:to => recipients, :from => from, :subject => subject)
	end

end
