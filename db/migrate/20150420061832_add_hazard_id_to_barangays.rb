class AddHazardIdToBarangays < ActiveRecord::Migration
  def change
    add_column :barangays, :hazard_id, :integer
  end
end
