class CreateMunicipalities < ActiveRecord::Migration
  def change
    create_table :municipalities do |t|
      t.string :name
      t.integer :mayor
      t.integer :vicemayor
      t.decimal :area

      t.timestamps null: false
    end
  end
end
