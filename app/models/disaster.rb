class Disaster < ActiveRecord::Base
has_many :hit, dependent: :destroy
has_many :impact, dependent: :destroy
def self.search(query)
  where("cast(hazard_id as text) LIKE ?", "%#{query}%") 
end
end
