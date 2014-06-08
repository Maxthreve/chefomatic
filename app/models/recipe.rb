class Recipe < ActiveRecord::Base
  validates :name, presence: true, length:{ minimum: 3}
  belongs_to :dietitian
  has_many :recipe_steps
  has_many :recipe_ingredients
  has_many :focus_groups

  #### attribute accessor / permitted perams rails 4

end
