class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all
    render json: @blog_posts.as_json, status: :ok
  end

  def update
  end

  def show
  end
end
