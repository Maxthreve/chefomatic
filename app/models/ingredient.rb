class Ingredient < ActiveRecord::Base
  has_many :step_ingredients
  has_many :recipe_ingredients
  has_many :links_to_allergens,
            class_name: "AllergenIngredientLink"
  
  has_many :allergens, through: :links_to_allergens, source: :allergen

end
