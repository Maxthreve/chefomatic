class FocusGroup < ActiveRecord::Base
has_and_belongs_to_many :allergens
has_and_belongs_to_many :recipes

end
