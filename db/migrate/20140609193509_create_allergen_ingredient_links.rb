class CreateAllergenIngredientLinks < ActiveRecord::Migration
  def change
    create_table :allergen_ingredient_links do |t|
      t.integer :allergen_id
      t.integer :ingredient_id
      t.timestamps
    end
  end
end
