class AddZoneidToHouseholds < ActiveRecord::Migration
  def change
    add_column :households, :zone_id, :integer
  end
end
