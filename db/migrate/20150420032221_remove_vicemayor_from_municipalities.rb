class RemoveVicemayorFromMunicipalities < ActiveRecord::Migration
  def change
    remove_column :municipalities, :vicemayor, :integer
  end
end
