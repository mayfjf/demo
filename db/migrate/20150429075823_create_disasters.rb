class CreateDisasters < ActiveRecord::Migration
  def change
    create_table :disasters do |t|
      t.integer :hazard_id
      t.datetime :date
      t.string :details

      t.timestamps null: false
    end
  end
end
