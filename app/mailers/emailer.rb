class Emailer < ApplicationMailer
	def send_contact_us_details(email,subject,description)
		@email = email
		@subject = subject
		@description = description
		mail(:to => "navadiyasank@gmail.com", :subject => "Contact Us Details")
		# mail(:to => "mr.staynn@gmail.com",cc: ['navadiyasank@gmail.com'], :subject => "Contact Us Details")
	end
end
