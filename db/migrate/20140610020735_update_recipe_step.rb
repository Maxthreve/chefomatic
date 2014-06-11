class UpdateRecipeStep < ActiveRecord::Migration
  def change
  remove_column :step_ingredients, :step_number
  add_column :recipe_steps, :step_number, :integer
  end
end
