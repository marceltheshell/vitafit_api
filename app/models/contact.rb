class Contact < ApplicationRecord
  # validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
end
