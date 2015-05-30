class AddLivestockToZones < ActiveRecord::Migration
  def change
    add_column :zones, :livestock, :decimal
  end
end
