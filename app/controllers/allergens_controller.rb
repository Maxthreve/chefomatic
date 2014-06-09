class AllergensController < ApplicationController
  
  def create
    @allergen = Allergen.new(allergen_params)
  end
  
  
  private
  def allergen_params
    params.require(:allergen).permit(:name)
  end
end
