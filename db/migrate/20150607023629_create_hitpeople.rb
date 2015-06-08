class CreateHitpeople < ActiveRecord::Migration
  def change
    create_table :hitpeople do |t|
      t.integer :hithousehold_id
      t.integer :disaster_id
      t.integer :person_id
      t.integer :age
      t.string :status

      t.timestamps null: false
    end
  end
end
