class CreateStepIngredients < ActiveRecord::Migration
  def change
    create_table :step_ingredients do |t|
      t.integer :step_id
      t.integer :ingredient_id
      t.integer :step_number

      t.timestamps
    end
  end
end
