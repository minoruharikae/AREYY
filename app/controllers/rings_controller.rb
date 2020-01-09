class RingsController < ApplicationController

  def index
    @ring = Ring.all
  end

  def show
    @ring = Ring.find(params[:id])
  end

  def new
    @ring = Ring.new
  end

  def create
    Ring.create(ring_params)
    redirect_to rings_path
  end

  private
  def ring_params
    params.require(:ring).permit(:size, :color, :price, :explain, :image, :name)
  end
end
