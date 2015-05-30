class RemoveDeadFromBarangays < ActiveRecord::Migration
  def change
    remove_column :barangays, :dead, :integer
  end
end
