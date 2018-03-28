class Blog < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true
  validates :views, presence: true
end
