class RemoveChairmanFromBarangays < ActiveRecord::Migration
  def change
    remove_column :barangays, :chairman, :integer
  end
end
