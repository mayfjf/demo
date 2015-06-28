class Disaster < ActiveRecord::Base
has_many :hit, dependent: :destroy
has_many :hithousehold, dependent: :destroy
has_many :hitperson, dependent: :destroy
has_many :impact, dependent: :destroy

validates :hazard_id, presence: true
validates :details, presence: true

def self.search(query)
  where("cast(hazard_id as text) LIKE ?", "%#{query}%") 
end
end
