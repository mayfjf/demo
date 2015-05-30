class AddPeopleidToHousehold < ActiveRecord::Migration
  def change
    add_column :households, :people_id, :integer
  end
end
