class Ingredient < ActiveRecord::Base
  has_many :step_ingredients
  has_many :recipe_ingredients
  has_and_belongs_to_many :allergens

end
