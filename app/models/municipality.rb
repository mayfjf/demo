class Municipality < ActiveRecord::Base

	belongs_to :people
	has_many :barangay

	 validates :name, presence: true, uniqueness: { case_sensitive: false }
	 
	 

	 
end
