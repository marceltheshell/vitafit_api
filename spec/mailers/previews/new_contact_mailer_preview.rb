# Preview all emails at http://localhost:3000/rails/mailers/new_contact_mailer
class NewContactMailerPreview < ActionMailer::Preview
	def send_mail
		NewContactMailer.send_mail(Contact.first.id)
	end
end