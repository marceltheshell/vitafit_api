require "rails_helper"

RSpec.describe ContactMailer, type: :mailer do
  describe 'welcome' do
    contact = Contact.create!(first_name: "pipita", last_name: "higuain", email: "marcel.degas@gmail.com")
    email = ContactMailer.welcome(contact)
  end
end