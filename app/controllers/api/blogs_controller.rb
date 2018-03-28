class Api::BlogsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    blogs = Blog.all
    render json: blogs.as_json, status: :ok
  end

  def show
    blog = Blog.find(params[:id])
    render json: blog.as_json
  end

  def create
    blog = Blog.new(blog_params)
    if blog.save
      ok_message = "Blog Saved"
      render json: ok_message, status: 200
    else
      err_message = "Sorry there was a problem"
      render json: err_message, status: 500
    end
  end

  def edit
    blog = Blog.find(params[:id])
    if blog.update(blog_params)
      ok_message = "Blog Updated"
      render json: ok_message, status: 200
    else
      err_message = "Sorry there was a problem"
      render json: err_message, status: 500
    end
  end

  def delete
    blog = Blog.find(params[:id])
    if blog.destroy!
      message = "deleted blog-post #{params[:id]}"
      render json: message, status: 200
    else
      err_message = "Sorry there was a problem"
      render json: err_message, status: 500
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end