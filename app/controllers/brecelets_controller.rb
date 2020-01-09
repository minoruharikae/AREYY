class BreceletsController < ApplicationController

  def index
    @brecelet = Brecelet.all
  end

  def show
    @brecelet = Brecelet.find(params[:id])
  end

  def new
    @brecelet = Brecelet.new
  end

  def create
    Brecelet.create(brecelet_params)
    redirect_to brecelets_path
  end

  private
  def brecelet_params
    params.require(:brecelet).permit(:size, :color, :price, :explain, :image, :name)
  end
end
