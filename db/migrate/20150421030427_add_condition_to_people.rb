class AddConditionToPeople < ActiveRecord::Migration
  def change
    add_column :people, :condition, :string
  end
end
