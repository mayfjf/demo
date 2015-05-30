class AddCountToHouseholds < ActiveRecord::Migration
  def change
    add_column :households, :count, :integer
  end
end
