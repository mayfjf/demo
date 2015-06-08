class RemovePersonIdFromHitperson < ActiveRecord::Migration
  def change
    remove_column :hitpeople, :person_id, :integer
  end
end
