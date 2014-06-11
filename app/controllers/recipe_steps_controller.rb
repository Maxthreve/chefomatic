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
	

    def update
      recipe = Recipe.find(params[:recipe_id])
      @recipe_step = recipe.recipe_steps.find(params[:id])
      if @recipe_step.update_attributes(recipe_step_params)
        flash.now[:messages] = ["successful update"]
      else
        flash.now[:errors] = @recipe_step.errors.full_messages
      end
      redirect_to :back
    end

    def destroy
      recipe = Recipe.find(params[:recipe_id])
      recipe_step = recipe.recipe_steps.find(params[:id])
      recipe_step.destroy
      redirect_to :back
    end 

	private
	def recipe_step_params
		params.require(:recipe_step).permit(:step_number, :directions)
	end 

end
