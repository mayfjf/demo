class AddConditionToHouseholds < ActiveRecord::Migration
  def change
    add_column :households, :condition, :string
  end
end
