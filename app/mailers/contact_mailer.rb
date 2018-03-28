class ContactMailer < ApplicationMailer
  default from: 'mayratn.hall@gmail.com'

  def response_email(contact_id)
    contact = Contact.find(contact_id)

    mail(   :to      => contact.email
            :subject => 'Meeting your health goals with VitaFit'
    ) do |format|
      format.text
      format.html
    end
  end
end
