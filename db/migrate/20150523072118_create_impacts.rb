class CreateImpacts < ActiveRecord::Migration
  def change
    create_table :impacts do |t|
      t.integer :zone_count
      t.integer :dead
      t.integer :missing
      t.integer :injured
      t.integer :displaced
      t.integer :relocated
      t.integer :good
      t.integer :ptotal
      t.decimal :livestock
      t.decimal :agri
      t.decimal :infra
      t.decimal :commerce
      t.decimal :ctotal

      t.timestamps null: false
    end
  end
end
