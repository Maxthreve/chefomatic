class CreateAllergens < ActiveRecord::Migration
  def change
    create_table :allergens do |t|
      t.integer :allergenId
      t.string :name

      t.timestamps
    end
  end
end
