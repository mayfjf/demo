class AddAtotalToImpacts < ActiveRecord::Migration
  def change
    add_column :impacts, :atotal, :decimal
  end
end
