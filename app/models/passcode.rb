class Passcode < ActiveRecord::Base
	 validates :municipal_id, presence: true, :uniqueness => {:scope => :barangay_id}
	 validates :barangay_id, presence: true, uniqueness: true, :uniqueness => {:scope => :municipal_id}
	 validates :pass, presence: true, case_sensitive: false 
end
