class AddInfraToZones < ActiveRecord::Migration
  def change
    add_column :zones, :infra, :decimal
  end
end
