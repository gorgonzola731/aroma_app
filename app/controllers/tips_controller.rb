class TipsController < ApplicationController
  def index
    @tips = Tip.all.order(created_at: :desc)
  end

  def show
    @tip = Tip.find(params[:id])
  end

  private
    def tip_params
      params.require(:tip).permit(:title, :article, :image)
    end
end
