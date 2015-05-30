class RemoveTreasurerFromBarangays < ActiveRecord::Migration
  def change
    remove_column :barangays, :treasurer, :integer
  end
end
