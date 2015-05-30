class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.integer :priority
      t.integer :code
      t.string :description
      t.integer :agency_id

      t.timestamps null: false
    end
  end
end
