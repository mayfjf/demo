class AddPopulationToBarangays < ActiveRecord::Migration
  def change
    add_column :barangays, :population, :integer
  end
end
