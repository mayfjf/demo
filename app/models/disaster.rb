class Disaster < ActiveRecord::Base
has_many :hit

def self.search(query)
  where("hazard_id = ?", "%#{query}%") 
end
end
