require "rails_helper"

describe "add/get/update/delete blog post API" do
  describe Api::BlogPostsController do
    
    it "tests the post request" do
      data = {"blog": {"title": "hello", "content": "content"}}
     
      post '/api/blog', params: data.to_json, headers: headers
    end
  end
end
