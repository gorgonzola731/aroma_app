class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: %i[destroy]

  PER_PAGE = 5

  def index
    @posts = Post.includes([:user, :likes, :comments]).order(created_at: :desc).page(params[:page]).per(PER_PAGE)
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
    @comment = Comment.new
    @comments = @post.comments.includes(:user).order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)
    @posts = Post.includes([:user, :likes, :comments]).order(created_at: :desc).page(params[:page]).per(PER_PAGE)
  end

  def destroy
    @post.destroy!
    @user = @post.user
    @posts = Post.includes([:user, :likes, :comments]).order(created_at: :desc).page(params[:page]).per(PER_PAGE)
    @my_posts = @user.posts.includes([:likes, :comments]).order(created_at: :desc).page(params[:page]).per(PER_PAGE)
    @like_posts = @user.like_posts.includes([:comments]).page(params[:page]).per(PER_PAGE)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :image, :aroma).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
