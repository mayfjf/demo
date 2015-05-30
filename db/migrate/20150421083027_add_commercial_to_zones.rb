class AddCommercialToZones < ActiveRecord::Migration
  def change
    add_column :zones, :commercial, :decimal
  end
end
