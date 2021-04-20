class PostsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    aroma_rails = ["フローラル", "ハーバル", "ウッディ", "シトラス", "和風", "スパイシー", "エキゾチック", "その他"]
    @posts = Post.where(aroma: aroma_rails).order(created_at: :desc) 
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    current_user.posts.create!(post_params)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end
  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :image, :aroma)
    end

end