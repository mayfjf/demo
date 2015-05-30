class RemoveGoodFromZones < ActiveRecord::Migration
  def change
    remove_column :zones, :good, :integer
  end
end
