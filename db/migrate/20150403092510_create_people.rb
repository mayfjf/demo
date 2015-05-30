class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :household_id
      t.integer :zone_id
      t.integer :condition
      t.string :firstname
      t.string :middlename
      t.string :familyname
      t.datetime :birthdate
      t.string :civilstatus
      t.string :occupation
      t.string :contactnum
      t.string :disabilityinfo

      t.timestamps null: false
    end
  end
end
