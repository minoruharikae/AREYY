class PiercingsController < ApplicationController

  def index
    @piercing = Piercing.all
  end

  def show
    @piercing = Piercing.find(params[:id])
  end

  def new
    @piercing = Piercing.new
  end

  def create
    Piercing.create(piercing_params)
    redirect_to piercings_path
  end

  private
  def piercing_params
    params.require(:piercing).permit(:size, :color, :price, :explain, :image, :name)
  end
end
