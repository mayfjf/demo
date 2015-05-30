class RemoveMayorFromMunicipalities < ActiveRecord::Migration
  def change
    remove_column :municipalities, :mayor, :integer
  end
end
