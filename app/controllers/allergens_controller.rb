class AllergensController < ApplicationController
  
  def create
    @allergen = Allergen.new(allergen_params)
    redirect_to :back
  end
  
  def show
    @allergen = Allergen.find(params[:id])
  end
  
  private
  def allergen_params
    params.require(:allergen).permit(:name)
  end
end
