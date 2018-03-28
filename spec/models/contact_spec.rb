require 'rails_helper'

RSpec.describe Contact, type: :model do
  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:email) }
  it { should respond_to(:message) }

  context 'validations' do 
  	it { should validate_presence_of(:email) }
  	it { should validate_presence_of(:first_name) }
  end
end
