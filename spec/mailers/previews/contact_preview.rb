# Preview all emails at http://localhost:3000/rails/mailers/contact
class ContactPreview < ActionMailer::Preview
  def response_email
    ContactMailer.response_email(Contact.first.id)
  end
end
