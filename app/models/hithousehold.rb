class Hithousehold < ActiveRecord::Base
after_destroy :destroy_hitperson
validates :household_id, presence: true,:uniqueness => {:scope => :disaster_id}
validates :disaster_id, presence: true, :uniqueness => {:scope => :household_id}
validates :zone_id, presence: true
validates :status, presence: true


def destroy_hitperson
		@pp = Hitperson.where('household_id = ? AND disaster_id=?', self.household_id, self.disaster_id)

			@pp.all.each do |p|
				p.destroy
			end
			
	end
end
