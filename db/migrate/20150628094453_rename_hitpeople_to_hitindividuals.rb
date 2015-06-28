class RenameHitpeopleToHitindividuals < ActiveRecord::Migration
  def change
  	rename_table :Hitpeople, :hitindividuals
  end
end
