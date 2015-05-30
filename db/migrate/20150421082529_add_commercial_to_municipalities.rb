class AddCommercialToMunicipalities < ActiveRecord::Migration
  def change
    add_column :municipalities, :commercial, :decimal
  end
end
