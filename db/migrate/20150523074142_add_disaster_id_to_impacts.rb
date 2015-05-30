class AddDisasterIdToImpacts < ActiveRecord::Migration
  def change
    add_column :impacts, :disaster_id, :integer
  end
end
