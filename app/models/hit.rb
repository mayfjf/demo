class Hit < ActiveRecord::Base

before_save :assign_bm
belongs_to :disaster

after_destroy :destroy_hithousehold


	validates :disaster_id, presence:true
	validates :zone_id, presence:true, :uniqueness => {:scope =>:disaster_id}
	validates :livestock, presence:true
	validates :agri, presence:true
	validates :commerce, presence:true
	validates :infra, presence:true

	private

	def assign_bm
		@zone = Zone.where('id = ?', self.zone_id)
		@bar = Barangay.joins(:zone).where('zones.barangay_id = ?', @zone[0].barangay_id)
		self.barangay_id = @bar[0].id


		@x = Barangay.where('id = ?', self.barangay_id)
		@mun = Municipality.joins(:barangay).where('barangays.municipality_id = ?', @x[0].municipality_id)
		self.municipal_id = @mun[0].id
	
	end

	def destroy_hithousehold
		@xp = Hithousehold.where('zone_id = ? AND disaster_id=?', self.zone_id,self.disaster_id)

		@xp.all.each do |y|

			@pp = Hitperson.where('hithousehold_id = ? AND disaster_id=?', y.household_id, y.disaster_id)

			@pp.all.each do |p|
				p.destroy
			end
			y.destroy
		end
	end

end
