class AddPeopleIdToMunicipalities < ActiveRecord::Migration
  def change
    add_column :municipalities, :people_id, :integer
  end
end
