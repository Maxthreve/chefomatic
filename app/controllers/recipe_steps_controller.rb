class RecipeStepsController < ApplicationController

	def create
	  @recipe = Recipe.find(params[:recipe_id])
	  
	  @recipe_step = @recipe.recipe_steps.new(recipe_step_params)

	  if @recipe_step.save
	  else 

	  	flash.now[:errors] = @recipe_step.errors.full_messages
	  end 
	  
	  redirect_to :back


	end
	
	private
	def recipe_step_params
		params.require(:recipe_step).permit(:step, :directions)
	end 

end
