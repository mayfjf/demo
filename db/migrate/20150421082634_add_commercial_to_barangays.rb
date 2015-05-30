class AddCommercialToBarangays < ActiveRecord::Migration
  def change
    add_column :barangays, :commercial, :decimal
  end
end
