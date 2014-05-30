class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.integer :recipeId
      t.integer :ingredientId
      t.string :amount
      t.string :unit

      t.timestamps
    end
  end
end
