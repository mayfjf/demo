class AddHouseholdIdToHitpeople < ActiveRecord::Migration
  def change
    add_column :hitpeople, :household_id, :integer
  end
end
