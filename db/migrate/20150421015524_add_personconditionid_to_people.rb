class AddPersonconditionidToPeople < ActiveRecord::Migration
  def change
    add_column :people, :person_condition_id, :integer
  end
end
