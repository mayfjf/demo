class CreateHazards < ActiveRecord::Migration
  def change
    create_table :hazards do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
