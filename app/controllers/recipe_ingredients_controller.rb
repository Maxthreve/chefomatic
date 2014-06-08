class RecipeIngredientsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_ingredient = @recipe.recipe_ingredients.create(recipe_ingredient_params)
    # redirect_to recipe_ingredient_path(@recipe_ingredient)
  end
  #passing @recipe_ingredient to the show viwe
  def update
  @recipe_ingredient = Recipe_ingredient.find(params[:id])
  end


  private
  # a recipe ingredient has an amount and a unit
  def recipe_ingredient_params
    params.require(:recipe_ingredient).permit(:unit, :amount)
  end

end
