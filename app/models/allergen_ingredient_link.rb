class AllergenIngredientLink < ActiveRecord::Base
  belongs_to :allergen
  belongs_to :ingredient
end
