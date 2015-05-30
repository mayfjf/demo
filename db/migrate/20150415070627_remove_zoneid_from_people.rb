class RemoveZoneidFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :zone_id, :integer
  end
end
