class Hitperson < ActiveRecord::Base

after_save :compute_dead_zone
before_save :compute_dead_zone
after_destroy :compute_dead_zone

validates :hithousehold_id, presence: true
validates :disaster_id, presence: true, :uniqueness => {:scope => :people_id}
validates :people_id, presence: true, :uniqueness => {:scope => :disaster_id}
validates :status, presence: true

private

def compute_dead_zone
     	
     	x=Hitperson.group([:hithousehold_id, :status, :disaster_id]).count
     	cc =Hit.all
     	cc.all.each do |h|
     	    hh = Hithousehold.where('zone_id = ? AND disaster_id=?', h.zone_id, h.disaster_id)

    	    @dead=0
    	    @good=0
  			@missing=0
  			@injured=0
  			@displaced=0
  			@relocated=0

    		hh.all.each do |y|
     			d=x[[y.household_id,"Dead", h.disaster_id]] || 0
     			@dead = d+@dead 

     			g=x[[y.household_id,"Good", h.disaster_id]] || 0
     			@good = g+@good

     			m=x[[y.household_id,"Missing", h.disaster_id]] || 0
     			@missing = m+@missing 

     			i=x[[y.household_id,"Injured", h.disaster_id]] || 0
     			@injured = i+@injured

     			dis=x[[y.household_id,"Displaced", h.disaster_id]] || 0
     			@displaced = dis+@displaced

     			r=x[[y.household_id,"Relocated", h.disaster_id]] || 0
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
