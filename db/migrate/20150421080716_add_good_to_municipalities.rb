class AddGoodToMunicipalities < ActiveRecord::Migration
  def change
    add_column :municipalities, :good, :integer
  end
end
