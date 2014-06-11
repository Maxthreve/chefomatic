class IngredientsController < ApplicationController
  # not sure if i need to create a recipe first
  #  or because ingrdient only belongs to recipe_ingredient
  # i can get away with just ceating the recipe ingredient
  def create
    @ingredient = Ingredient.new(ingredient_params) #(params[:recipe])

      # @recipe_ingredient = Recipe_ingredient.find(params[:recipe_ingredient_id])
      # @ingredient = @recipe_ingredient.ingredients.create(ingredient_params)
      redirect_to :back #recipe_ingredient_path(@ingredient)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def index
    @ingredients = Ingredient.all

  end


  # ingredients just have a name
  private
    def ingredient_params
      params.require(:ingredient).permit(:name)
    end

end
