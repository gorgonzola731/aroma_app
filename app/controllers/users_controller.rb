class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(created_at: :desc)
    @likes = Like.where(user_id: @user.id)
    @post = Post.find(params[:id])
  end
end
