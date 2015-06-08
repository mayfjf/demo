class People < ActiveRecord::Base
before_save :calculate_age #to be edited -- suppose to be onload

after_save :compute_members
after_destroy :compute_members
before_save :compute_members

    has_one :municipality, dependent: :nullify
    has_one :barangay, dependent: :nullify
       
    

validates :firstname, presence: true,uniqueness: { case_sensitive: false }, :uniqueness => {:scope => [:middlename, :familyname]}
validates :middlename, presence: true,uniqueness: { case_sensitive: false }, :uniqueness => {:scope => [:firstname, :familyname]}
validates :familyname, presence: true,uniqueness: { case_sensitive: false }, :uniqueness => {:scope => [:middlename, :firstname]}
validates :household_id, presence: true
validates :birthdate, presence: true



private

	def calculate_age
		 now = Time.now
		 dob = self.birthdate
		 self.age = now.year - dob.year - (dob.to_time.change(:year => now.year) > now ? 1 : 0)

	end

    def compute_members
		
		x = People.group("household_id").count
        @y = Household.all
		@y.all.each do |p|
        	ag =Household.find(p.id)
            ag.count = (x[p.id] || 0)
            ag.save
         end
    end

     


     
end
