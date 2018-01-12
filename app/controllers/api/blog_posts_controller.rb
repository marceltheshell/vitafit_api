class Api::BlogPostsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    blog_posts = BlogPost.all
    render json: blog_posts.as_json, status: :ok
  end

  def show
    blog_post = BlogPost.find(params[:id])
    render json: blog_post.as_json
  end

  def create
    blog_post = BlogPost.new(blog_params)
    if blog_post.save
      ok_message = "BlogPost Saved"
      render json: ok_message, status: 200
    else
      err_message = "Sorry there was a problem"
      render json: err_message, status: 500
    end
  end

  def edit
    blog_post = BlogPost.find(params[:id])
    if blog_post.update(blog_params)
      ok_message = "BlogPost Updated"
      render json: ok_message, status: 200
    else
      err_message = "Sorry there was a problem"
      render json: err_message, status: 500
    end
  end

  def delete
    blog_post = BlogPost.find(params[:id])
    if blog_post.destroy!
      message = "deleted blog-post #{params[:id]}"
      render json: message, status: 200
    else
      err_message = "Sorry there was a problem"
      render json: err_message, status: 500
    end
  end

  private

  def blog_params
    params.require(:blog_post).permit(:title, :content)
  end
end