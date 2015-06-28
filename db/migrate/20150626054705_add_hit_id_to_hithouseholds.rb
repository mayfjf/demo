class AddHitIdToHithouseholds < ActiveRecord::Migration
  def change
    add_column :hithouseholds, :hit_id, :integer
  end
end
