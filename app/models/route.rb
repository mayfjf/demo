class Route < ActiveRecord::Base

before_save :compute_temp

validates :description, presence: true,uniqueness: { case_sensitive: false }
validates :name, presence: true,uniqueness: { case_sensitive: false }


def self.search(query)
  where("passable like ?", "%#{query}%") 
end

private

	def compute_temp
		if self.passable
		 @x = self.weight
		else
		 @x = 200
		end
		self.temp=@x

	end
end
