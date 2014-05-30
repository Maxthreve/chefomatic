class CreateFocusGroups < ActiveRecord::Migration
  def change
    create_table :focus_groups do |t|
      t.integer :focusGroupId
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
