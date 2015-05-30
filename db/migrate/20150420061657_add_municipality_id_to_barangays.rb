class AddMunicipalityIdToBarangays < ActiveRecord::Migration
  def change
    add_column :barangays, :municipality_id, :integer
  end
end
