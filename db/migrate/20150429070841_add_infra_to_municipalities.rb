class AddInfraToMunicipalities < ActiveRecord::Migration
  def change
    add_column :municipalities, :infra, :decimal
  end
end
