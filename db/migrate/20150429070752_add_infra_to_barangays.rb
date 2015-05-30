class AddInfraToBarangays < ActiveRecord::Migration
  def change
    add_column :barangays, :infra, :decimal
  end
end
