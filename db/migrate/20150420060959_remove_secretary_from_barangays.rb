class RemoveSecretaryFromBarangays < ActiveRecord::Migration
  def change
    remove_column :barangays, :secretary, :integer
  end
end
