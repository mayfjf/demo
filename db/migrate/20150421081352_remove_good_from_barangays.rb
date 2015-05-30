class RemoveGoodFromBarangays < ActiveRecord::Migration
  def change
    remove_column :barangays, :good, :integer
  end
end
