class AddMunicipalIdToHits < ActiveRecord::Migration
  def change
    add_column :hits, :municipal_id, :integer
  end
end
