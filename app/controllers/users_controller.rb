class UsersController < ApplicationController
  PER_PAGE = 5

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(created_at: :desc)
    @posts = @posts.page(params[:page]).per(PER_PAGE)
    @likes = Like.where(user_id: @user.id).order(created_at: :desc)
  end
end
