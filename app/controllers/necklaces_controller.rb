class NecklacesController < ApplicationController

  def index
    @necklace = Necklace.all
  end

  def show
    @necklace = Necklace.find(params[:id])
  end

  def new
    @necklace = Necklace.new
  end

  def create
    Necklace.create(necklace_params)
    redirect_to necklaces_path
  end

  private
  def necklace_params
    params.require(:necklace).permit(:size, :color, :price, :explain, :image, :name)
  end

end
