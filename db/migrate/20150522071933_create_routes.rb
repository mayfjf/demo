class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.boolean :passable
      t.integer :weight
      t.string :description

      t.timestamps null: false
    end
  end
end
