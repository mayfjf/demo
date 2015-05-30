class RemoveConditionFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :condition, :integer
  end
end
