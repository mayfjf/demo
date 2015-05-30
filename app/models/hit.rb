class Hit < ActiveRecord::Base
	validates :disaster_id, presence:true
	validates :zone_id, presence:true, :uniqueness => {:scope =>:disaster_id}
	validates :livestock, presence:true
	validates :agri, presence:true
	validates :commerce, presence:true
	validates :infra, presence:true

end
