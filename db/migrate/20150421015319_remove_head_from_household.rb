class RemoveHeadFromHousehold < ActiveRecord::Migration
  def change
    remove_column :households, :head, :integer
  end
end
