class Allergen < ActiveRecord::Base
has_many :ingredients
has_many :foucus_groups
end
