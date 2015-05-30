class RemoveMunicipalIdFromBarangays < ActiveRecord::Migration
  def change
    remove_column :barangays, :municipal_id, :integer
  end
end
