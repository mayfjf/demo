class Impact < ActiveRecord::Base
belongs_to :disaster
	validates :disaster_id, presence: true, uniqueness: true

end
