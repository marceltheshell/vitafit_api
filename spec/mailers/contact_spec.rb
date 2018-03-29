require "rails_helper"

RSpec.describe ContactMailer, type: :mailer do
  describe 'welcome' do
    let(:contact) { Contact.create!(first_name: "pipita", last_name: "higuain", email: "marcel.degas@gmail.com") }
    let(:email) { ContactMailer.welcome(contact).deliver_now}

    it 'renders the subject' do
      expect(email.subject).to eq('Welcome to VitaFit')
    end

    it 'renders the receiver email' do
      expect(email.to).to eq([contact.email])
    end

    it 'renders the sender email' do
      expect(email.from).to eq(['mayratn.hall@gmail.com'])
    end

    it 'assigns @name' do
      expect(email.body.encoded).to match(contact.first_name)
    end

    it 'assigns @confirmation_url' do
      binding.pry
      expect(mail.body.encoded)
        .to match("http://aplication_url/#{user.id}/confirmation")
    end
  end
end