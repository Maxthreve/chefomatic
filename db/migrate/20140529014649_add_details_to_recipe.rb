class AddDetailsToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :name, :string
    add_column :recipes, :taste, :string
    add_column :recipes, :cookTime, :string
    add_column :recipes, :prepTime, :string
    add_column :recipes, :difficulty, :string
    add_column :recipes, :course, :string
    add_column :recipes, :ageGroup, :string
    add_column :recipes, :targetGroup, :string
    add_column :recipes, :dietitianId, :int
  end
end
