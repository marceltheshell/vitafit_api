class ContactMailer < ApplicationMailer
  default from: 'mayratn.hall@gmail.com'

  def welcome(contact)
    @contact = contact
    subject = 'Welcome to VitaFit'
    mail(
      to: contact.email,
      subject: 'Welcome to VitaFit',
      template_path: 'contact_mailer',
      template_name: 'welcome')
  end
end




# mail(:to => contact.email, :subject => subject) do |format|
#       format.text
#       # format.html
#     end