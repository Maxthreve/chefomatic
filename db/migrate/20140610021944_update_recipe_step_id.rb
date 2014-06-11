class UpdateRecipeStepId < ActiveRecord::Migration
  def change
  remove_column :step_ingredients, :step_id
  add_column :step_ingredients, :recipe_step_id, :integer
  remove_column :recipe_steps, :step_id
  add_column :recipe_steps, :recipe_step_id, :integer

  end
end
