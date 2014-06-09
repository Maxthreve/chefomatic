class Allergen < ActiveRecord::Base
  has_many :foucus_groups
  
  has_many :links_to_allergens,
            class_name: "AllergenIngredientLink"
  
  has_many :ingredients, through: :links_to_allergens, source: :ingredient
end
