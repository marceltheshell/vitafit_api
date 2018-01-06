require 'rails_helper'

describe Api::BlogPostsController do 

  before do
    BlogPost.create!(title: "first ever blog!")
    BlogPost.create!(title: "and then there were 2!")
  end
  
  it "returns all blog entries" do
    expect( BlogPost.count ).to eq 2
  end
 
end

