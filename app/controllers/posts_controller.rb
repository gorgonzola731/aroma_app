class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: %i[destroy]

  PER_PAGE = 5

  def index
    @posts = Post.all.order(created_at: :desc)
    @posts = @posts.page(params[:page]).per(PER_PAGE)
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find_by(id: @post.user_id)
    @comment = Comment.new
    @comments = @post.comments.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)
    @posts = Post.all.order(created_at: :desc)
    @posts = @posts.page(params[:page]).per(PER_PAGE)
  end

  def destroy
    @post.destroy!

    @posts = Post.all.order(created_at: :desc)
    @posts = @posts.page(params[:page]).per(PER_PAGE)

    @user = User.find_by(id: @post.user_id)
    @my_posts = @user.posts.order(created_at: :desc)
    @my_posts = @my_posts.page(params[:page]).per(PER_PAGE)

    @like_posts = @user.like_posts.page(params[:page]).per(PER_PAGE)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :image, :aroma).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
