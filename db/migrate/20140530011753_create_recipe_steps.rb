class CreateRecipeSteps < ActiveRecord::Migration
  def change
    create_table :recipe_steps do |t|
      t.string :recipe_id
      t.integer :step_id
      t.string :directions
      t.timestamps
    end
  end
end
