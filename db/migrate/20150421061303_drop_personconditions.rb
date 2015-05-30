class DropPersonconditions < ActiveRecord::Migration

	def up
      drop_table :person_conditions
    end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
