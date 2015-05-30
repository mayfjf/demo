class AddPeopleIdToBarangays < ActiveRecord::Migration
  def change
    add_column :barangays, :people_id, :integer
  end
end
