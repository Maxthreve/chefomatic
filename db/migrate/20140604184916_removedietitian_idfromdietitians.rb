class RemovedietitianIdfromdietitians < ActiveRecord::Migration
  def change
      remove_column :dietitians, :dietitianId
  end
end
