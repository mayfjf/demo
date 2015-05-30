class CreateHits < ActiveRecord::Migration
  def change
    create_table :hits do |t|
      t.integer :zone_id
      t.integer :disaster_id
      t.string :effect1
      t.string :effect2
      t.string :effect3
      t.string :dlifeline1
      t.string :dlifeline2
      t.string :dlifeline3
      t.decimal :livestock
      t.decimal :agri
      t.decimal :commerce
      t.decimal :infra
      t.integer :dead
      t.integer :missing
      t.integer :injured
      t.integer :displaced
      t.integer :relocated
      t.integer :good

      t.timestamps null: false
    end
  end
end
