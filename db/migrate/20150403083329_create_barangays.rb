class CreateBarangays < ActiveRecord::Migration
  def change
    create_table :barangays do |t|
      t.string :name
      t.integer :chairman
      t.integer :secretary
      t.integer :treasurer
      t.integer :municipal_id
      t.string :main_livelihood
      t.decimal :area
      t.string :rescue_resources
      t.integer :pronetohazards

      t.timestamps null: false
    end
  end
end
