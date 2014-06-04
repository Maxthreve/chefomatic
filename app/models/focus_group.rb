class FocusGroup < ActiveRecord::Base
has_many :allergens
has_many :recipes

end
