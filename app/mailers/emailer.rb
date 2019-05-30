class Emailer < ApplicationMailer
	def send_contact_us_details(email,subject,description)
		@email = email
		@subject = subject
		@description = description
		mail(:to => "mr.staynn@gmail.com", :subject => "Contact Us - Hydro-orient")
	end
end
