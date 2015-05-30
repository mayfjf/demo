class AddLivestockToMunicipalities < ActiveRecord::Migration
  def change
    add_column :municipalities, :livestock, :decimal
  end
end
