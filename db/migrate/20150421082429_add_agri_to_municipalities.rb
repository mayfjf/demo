class AddAgriToMunicipalities < ActiveRecord::Migration
  def change
    add_column :municipalities, :agri, :decimal
  end
end
