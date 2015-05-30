class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.integer :barangay_id
      t.decimal :area

      t.timestamps null: false
    end
  end
end
