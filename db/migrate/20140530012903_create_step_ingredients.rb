class CreateStepIngredients < ActiveRecord::Migration
  def change
    create_table :step_ingredients do |t|
      t.integer :stepId
      t.integer :ingredientId
      t.integer :stepNumber

      t.timestamps
    end
  end
end
