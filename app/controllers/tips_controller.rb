class TipsController < ApplicationController
  def index
    @tips = Tip.all.order(created_at: :desc)
  end

  private
    def tip_params
      params.require(:tip).permit(:title, :article)
    end
end
