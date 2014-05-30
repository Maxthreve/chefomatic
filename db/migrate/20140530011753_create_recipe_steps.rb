class CreateRecipeSteps < ActiveRecord::Migration
  def change
    create_table :recipe_steps do |t|
      t.string :recipeId
      t.integer :stepId
      t.string :directions
      t.timestamps
    end
  end
end
