class RemoveHitIdFromHithouseholds < ActiveRecord::Migration
  def change
    remove_column :hithouseholds, :hit_id, :integer
  end
end
