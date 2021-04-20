class PostsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    aroma_rails = ["フローラル", "ハーバル", "ウッディ", "シトラス", "和の香り", "スパイシー", "エキゾチック", "その他"]
    @posts = Post.where(aroma: aroma_rails).order(created_at: :desc) 
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find_by(id: @post.user_id)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)
    @posts = Post.all.order(created_at: :desc) 
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
      params.require(:post).permit(:title, :content, :image, :aroma,).merge(user_id: current_user.id)
    end

end