class RemovePronetoHazardsFromBarangays < ActiveRecord::Migration
  def change
    remove_column :barangays, :pronetohazards, :integer
  end
end
