class CreateHouseholds < ActiveRecord::Migration
  def change
    create_table :households do |t|
      t.string :name
      t.integer :head

      t.timestamps null: false
    end
  end
end
