class Allergen < ActiveRecord::Base
has_and_belongs_to_many :ingredients
has_many :foucus_groups
end
