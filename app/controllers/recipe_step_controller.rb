class RecipeStepController < ApplicationController

def create
  @recipe = Recipe.find(params[:recipe_id])
  
  @recipe_step = @recipe.recipe_steps.new(recipe_step_params)
  # add this in later to create the recipe step relation
  # cannont think of a great way to display this
  @ingredients = RecipeIngredient.find(params[:recipe_id])
  
  if @recipe_step.save
  else 

  	flash.now[:errors] = @recipe_step.errors.full_messages
  end 
  
  redirect_to :back
  # should I create the ingredient relationship here
  # potentialy list out all of the recipe ingredients 

end
	private
	def recipe_step_params
		params.require(:recipe_step).permit(:step_number, :directions)
	end 

end
