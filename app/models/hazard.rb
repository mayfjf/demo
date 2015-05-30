class Hazard < ActiveRecord::Base
	has_many :barangay, dependent: :destroy
	has_one :disaster,dependent: :destroy
	validates :description, presence: true, uniqueness: { case_sensitive: false }
	 
end
