class RecipeStep < ActiveRecord::Base
  belongs_to :recipe
  has_many :stepIngredients
   
end
