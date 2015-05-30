class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :contactnum
      t.integer :prioritynum
      t.string :reponsibilities
      t.string :head

      t.timestamps null: false
    end
  end
end
