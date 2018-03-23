class NewContactMailerPreview < ActionMailer::Preview
	def send_mail
		NewContactMailer.send_mail(Contact.first.id)
	end
end