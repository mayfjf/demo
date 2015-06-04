class AddBarangayIdToHits < ActiveRecord::Migration
  def change
    add_column :hits, :barangay_id, :integer
  end
end
