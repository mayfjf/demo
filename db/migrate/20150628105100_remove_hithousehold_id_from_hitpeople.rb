class RemoveHithouseholdIdFromHitpeople < ActiveRecord::Migration
  def change
    remove_column :hitpeople, :hithousehold_id, :integer
  end
end
