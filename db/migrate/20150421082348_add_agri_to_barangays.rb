class AddAgriToBarangays < ActiveRecord::Migration
  def change
    add_column :barangays, :agri, :decimal
  end
end
