class AddGoodToZones < ActiveRecord::Migration
  def change
    add_column :zones, :good, :integer
  end
end
