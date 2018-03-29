class Contact < ApplicationRecord
  validates :email, presence: true
  validates :first_name, presence: true

  def send_welcome
    ContactMailer.welcome(self).deliver_now
  end
end
