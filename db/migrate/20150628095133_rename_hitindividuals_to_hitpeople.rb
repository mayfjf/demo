class RenameHitindividualsToHitpeople < ActiveRecord::Migration
  def change
  	rename_table :hitindividuals, :hitpeople
  end
end
