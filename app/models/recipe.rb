class Recipe < ActiveRecord::Base
  belongs_to :dietitian
  has_many :recipeSteps
  has_many :recipeIngerdients
  has_and_belongs_to_many :focusGroups


end
