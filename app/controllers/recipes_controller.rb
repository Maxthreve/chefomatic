class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    # binding.pry
    #params

      # @recipe = Recipe.new(recipe_params) #(params[:recipe])
      @recipe = current_dietitian.recipes.new(recipe_params)

      if @recipe.save
        redirect_to @recipe
      else
        render 'new'
      end


  # render plain: params[:recipe].inspect
  end



  def show
    @recipe = Recipe.find(params[:id])
    # every ingredient step
    @ingredients = Ingredient.all
    @ingredient = @recipe.recipe_ingredients.ingredients.new
end

  def index
    @recipes = Recipe.all
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end
  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private
  #everything below this will be private so make sure you account for that

  def recipe_params
    params.require(:recipe).permit(:name, :taste, :course, :cook_time, :prep_time, :target_group, :age_group, :difficulty )
  end


end
