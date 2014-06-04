class AddDetailsToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :name, :string
    add_column :recipes, :taste, :string
    add_column :recipes, :cook_time, :string
    add_column :recipes, :prep_time, :string
    add_column :recipes, :difficulty, :string
    add_column :recipes, :course, :string
    add_column :recipes, :age_group, :string
    add_column :recipes, :target_group, :string
    add_column :recipes, :dietitian_id, :int
  end
end
