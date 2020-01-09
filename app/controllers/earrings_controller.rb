class EarringsController < ApplicationController

  def index
    @earring = Earring.all
  end

  def show
    @earring = Earring.find(params[:id])
  end

  def new
    @earring = Earring.new
  end
  
  def create
    Earring.create(earring_params)
    redirect_to earrings_path
  end

  private
  def earring_params
    params.require(:earring).permit(:size, :color, :price, :explain, :image, :name)
  end
end
