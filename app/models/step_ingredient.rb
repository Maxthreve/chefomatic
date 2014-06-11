class StepIngredient < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :recipe_step
end
