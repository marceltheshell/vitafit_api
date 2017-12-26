require "spec_helper"

describe BlogPost, type: :model do

  let (:blog_post) {BlogPost.create!(title: "first!")}

  describe 'testing blogpost model' do
    it 'should have a valid title'
  end
end