class CreatePersonConditions < ActiveRecord::Migration
  def change
    create_table :person_conditions do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
