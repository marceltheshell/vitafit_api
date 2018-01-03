require "rails_helper"

describe BlogPost do

  let (:blog_post) {BlogPost.create!(title: "first!")}

  it 'should have a valid title' do 
    expect(blog_post.title).to eq("first!")
  end

end