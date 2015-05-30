class RemoveGoodFromMunicipalities < ActiveRecord::Migration
  def change
    remove_column :municipalities, :good, :integer
  end
end
