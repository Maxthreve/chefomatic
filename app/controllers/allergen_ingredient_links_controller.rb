class AllergenIngredientLinksController < ApplicationController
  def create
    
    if params.has_key?("allergen")
      allergen = Allergen.find_by_name(params[:allergen][:name])
      if !allergen
        allergen = Allergen.create({name: params[:allergen][:name]})
      end
      ingredient = Ingredient.find(params[:ingredient_id])
    elsif params.has_key?("ingredient")
      ingredient = Ingredient.find_by_name(params[:ingredient][:name])
      if !ingredient
        ingredient = Ingredient.create({name: params[:ingredient][:name]})
      end
      allergen = Allergen.find(params[:allergen_id])
    else
      #how did u get here?
    end
    ingredient.links_to_allergens.create({allergen_id: allergen.id})
    redirect_to :back
  end

  def destroy
  end
end
