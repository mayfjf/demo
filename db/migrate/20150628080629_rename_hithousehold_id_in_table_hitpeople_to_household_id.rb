class RenameHithouseholdIdInTableHitpeopleToHouseholdId < ActiveRecord::Migration
  def change
  	rename_column :Hitpeople, :hithousehold_id, :household_id
  end
end
