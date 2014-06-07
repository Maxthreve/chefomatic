class FixRecipeColumnNames < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.rename  :prepTime , :prep_time
      t.rename :cookTime , :cook_time
      t.rename :ageGroup , :age_group
      t.rename :targetGroup, :target_group
      t.rename :dietitianId , :dietitian_id
    end

  end
end
