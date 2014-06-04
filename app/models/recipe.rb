class Recipe < ActiveRecord::Base
  belongs_to :dietitian
  has_many :recipe_steps
  has_many :recipe_ingredients
  has_many :focus_groups


end
