class Hithousehold < ActiveRecord::Base

validates :household_id, presence: true,:uniqueness => {:scope => :disaster_id}
validates :disaster_id, presence: true, :uniqueness => {:scope => :household_id}
validates :zone_id, presence: true
validates :status, presence: true
end
