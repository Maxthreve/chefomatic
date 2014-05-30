class AddTimestampsToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :createTimeStamp, :datetime
    add_column :recipes, :modifTimeStamp, :datetime
  end
end
