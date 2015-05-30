class AddGoodToBarangays < ActiveRecord::Migration
  def change
    add_column :barangays, :good, :integer
  end
end
