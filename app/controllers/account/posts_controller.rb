class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def edit
    @post = current_user.posts.find(params[:i])
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path, notice: "Update Success"
    else
      render :edit
    end
  end

  def destroy
    @post = current_user.posts.find(params[:i])
    @post.destroy
    flash[:alert] = "post deleted"
    redirect_to posts_path
  end


end
