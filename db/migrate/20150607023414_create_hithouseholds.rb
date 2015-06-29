class CreateHithouseholds < ActiveRecord::Migration
  def change
    create_table :hithouseholds do |t|
      t.integer :household_id
      t.integer :disaster_id
      t.integer :zone_id
      t.string :status

      t.timestamps null: false
    end
  end
end
