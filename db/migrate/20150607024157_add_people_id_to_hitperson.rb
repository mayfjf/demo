class AddPeopleIdToHitperson < ActiveRecord::Migration
  def change
    add_column :hitpeople, :people_id, :integer
  end
end
