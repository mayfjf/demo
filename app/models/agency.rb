class Agency < ActiveRecord::Base

	has_many :need

	validates :name, presence:true, uniqueness: { case_sensitive: false }
	validates :head, presence:true, uniqueness: { case_sensitive: false }
	validates :contactnum, presence:true
	
end
