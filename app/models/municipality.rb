class Municipality < ActiveRecord::Base

	belongs_to :people
	has_many :barangay, dependent: :destroy

	 validates :name, presence: true, uniqueness: { case_sensitive: false }
	 
	 

	 
end
