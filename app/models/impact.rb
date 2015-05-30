class Impact < ActiveRecord::Base

	validates :disaster_id, presence: true, uniqueness: true

end
