class RemoveConditionFromHouseholds < ActiveRecord::Migration
  def change
    remove_column :households, :condition, :string
  end
end
