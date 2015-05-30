class AddAgriToZones < ActiveRecord::Migration
  def change
    add_column :zones, :agri, :decimal
  end
end
