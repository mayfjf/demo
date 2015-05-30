class AddLivestockToBarangays < ActiveRecord::Migration
  def change
    add_column :barangays, :livestock, :decimal
  end
end
