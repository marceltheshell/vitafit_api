require 'test_helper'

class BlogPostsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end


  describe 'blog posts controller' do 

    before do
      BlogEntry.create!(title: "first ever blog!")
      BlogEntry.create!(title: "and then there were 2!")
    end
    
    it "returns all blog entries" do
      expect( BlogEntry.count ).to eq 100
      binding.pry
      # BlogEntriesController.new.index
    end
    
  
  end
end
