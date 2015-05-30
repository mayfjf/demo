class AddTempToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :temp, :integer
  end
end
