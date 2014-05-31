class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many :stepIngredients
  has_and_belongs_to_many :recipeIngredients
  has_and_belongs_to_many :allergens
  
end
