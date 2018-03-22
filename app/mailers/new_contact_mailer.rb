class NewContactMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def send_mail(contact_id)
    # binding.pry
    mayra_email  = 'mayratn.hall@gmail.com'
    @contact = Contact.find(contact_id)

    mail(   :to      => mayra_email,
            :subject => 'A new client reached out to you!'
    ) do |format|
      format.text
      format.html
    end
  end
end



