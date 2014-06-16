class AllergenIngredientLinksController < ApplicationController
  def create
    # check to see if there is an allergen if yes get the params
    # if no create a new allergen
    # and finaly grab the ingredient id
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
      # because you create a allergy relationship through an ingredient 
      # there will never be a situation where the ingredient name is null
      # but probably should create a model rule
    end
    # create the ingredient allergy relationship
    ingredient.links_to_allergens.create({allergen_id: allergen.id})
    redirect_to :back
  end

  def destroy
  end
end
