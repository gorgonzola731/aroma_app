class TipsController < ApplicationController
  def index
    @tips = Tip.all.order(created_at: :desc)
  end

  def show
    @tip = Tip.find(params[:id])
  end
end
