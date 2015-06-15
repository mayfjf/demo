class AddDetailsToBarangays < ActiveRecord::Migration
  def change
    add_column :barangays, :details, :string
  end
end
