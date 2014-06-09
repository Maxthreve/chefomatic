class AllergensIngredients < ActiveRecord::Migration
  def change
    create_table :allergens_ingredients, id: false do |t|
      t.belongs_to :allergen
      t.belongs_to :ingredient
    end
  end
end
