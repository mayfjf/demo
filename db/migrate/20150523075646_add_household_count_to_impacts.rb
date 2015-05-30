class AddHouseholdCountToImpacts < ActiveRecord::Migration
  def change
    add_column :impacts, :household_count, :integer
  end
end
