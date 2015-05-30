class AddPopulationToZones < ActiveRecord::Migration
  def change
    add_column :zones, :population, :integer
  end
end
