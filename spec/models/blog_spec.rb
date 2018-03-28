require 'rails_helper'

RSpec.describe Blog, type: :model do
  it { should respond_to(:title) }
  it { should respond_to(:content) }
  it { should respond_to(:author) }
  it { should respond_to(:views) }

  
  context 'validations' do 
  	it { should validate_presence_of(:title) }
  	it { should validate_presence_of(:author) }
  	it { should validate_presence_of(:views) } 
  end
  
  context 'defaults' do
    let (:blog) {Blog.create!(title: "new blog!", content: "this is content!")}

    it 'author should default to MayraHall' do 
      expect(blog.author).to eq("MayraHall")
    end

    it 'author views should default to 0' do 
      expect(blog.views).to eq(0)
    end

  end
end

