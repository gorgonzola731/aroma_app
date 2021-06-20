class UsersController < ApplicationController
  PER_PAGE = 5

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.includes([:likes, :comments]).order(created_at: :desc).page(params[:page]).per(PER_PAGE)
    @like_posts = @user.like_posts.includes([:likes, :comments]).page(params[:page]).per(PER_PAGE)
  end
end
