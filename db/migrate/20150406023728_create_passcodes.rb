class CreatePasscodes < ActiveRecord::Migration
  def change
    create_table :passcodes do |t|
      t.integer :municipal_id
      t.integer :barangay_id
      t.string :pass

      t.timestamps null: false
    end
  end
end
