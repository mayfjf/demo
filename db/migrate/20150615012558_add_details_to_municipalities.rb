class AddDetailsToMunicipalities < ActiveRecord::Migration
  def change
    add_column :municipalities, :details, :string
  end
end
