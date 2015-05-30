class People < ActiveRecord::Base
before_save :calculate_age #to be edited -- suppose to be onload

after_save :compute_members
after_destroy :compute_members
before_save :compute_members


after_save :compute_dead_zone
before_save :compute_dead_zone
after_destroy :compute_dead_zone


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

     def compute_dead_zone
     	
     	x=People.group([:household_id, :condition]).count
     	cc =Hit.all
     	cc.all.each do |h|
     	    hh = Household.where('zone_id LIKE ?', h.zone_id)

    	    @dead=0
    	    @good=0
  			@missing=0
  			@injured=0
  			@displaced=0
  			@relocated=0

    		hh.all.each do |y|
     			d=x[[y.id,"Dead"]] || 0
     			@dead = d+@dead 

     			g=x[[y.id,"Good"]] || 0
     			@good = g+@good

     			m=x[[y.id,"Missing"]] || 0
     			@missing = m+@missing 

     			i=x[[y.id,"Injured"]] || 0
     			@injured = i+@injured

     			dis=x[[y.id,"Displaced"]] || 0
     			@displaced = dis+@displaced

     			r=x[[y.id,"Relocated"]] || 0
     			@relocated = r+@relocated    
 		    end
    		
    		h.dead = @dead
    		h.good = @good
    		h.missing = @missing
    		h.injured = @injured
    		h.displaced=@displaced
    		h.relocated=@relocated

 		    h.save
 		end
    end


     
end
