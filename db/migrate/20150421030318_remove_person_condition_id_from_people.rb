class RemovePersonConditionIdFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :person_condition_id, :integer
  end
end
