class AddDeadToBarangays < ActiveRecord::Migration
  def change
    add_column :barangays, :dead, :integer
  end
end
