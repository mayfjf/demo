class Household < ActiveRecord::Base


	belongs_to :zone
	has_many :people, dependent: :destroy
	has_many :hitperson, dependent: :destroy
	
	
	 validates :name, presence: true, :case_sensitive => false, :uniqueness => true
	 validates :zone_id, presence: true

	 def self.search(query)
  		where("zone_id like ?", "%#{query}%") 
	 end

end
