class Zone < ActiveRecord::Base
after_save :compute_pop
after_save :compute_livestock
after_save :compute_agri
after_save :compute_commerce
after_save :compute_area
after_save :compute_infra


after_destroy :compute_pop
after_destroy :compute_livestock
after_destroy :compute_agri
after_destroy :compute_commerce
after_destroy :compute_area
after_destroy :compute_infra

    has_one :household, dependent: :nullify
    has_many :hit, dependent: :nullify


	validates :name, presence:true, :uniqueness => {:scope => :barangay_id}, uniqueness:{case_sensitive: false }
	
def self.search(query)
  where("barangay_id like ?", "%#{query}%") 
end

private
def compute_pop
	@x = Zone.group("barangay_id").sum(:population)
	allobject = Barangay.find(self.barangay_id)
            allobject.population = @x[self.barangay_id] 
            allobject.save

   
end

def compute_livestock
	@l = Zone.group("barangay_id").sum(:livestock)
	ls = Barangay.find(self.barangay_id)
            ls.livestock = @l[self.barangay_id] 
            ls.save
end

def compute_agri
	@agri = Zone.group("barangay_id").sum(:agri)
	ag = Barangay.find(self.barangay_id)
            ag.agri = @agri[self.barangay_id] 
            ag.save
end

def compute_commerce
	@commerce = Zone.group("barangay_id").sum(:commercial)
	com = Barangay.find(self.barangay_id)
            com.commercial = @commerce[self.barangay_id] 
            com.save
end

def compute_area
	@area = Zone.group("barangay_id").sum(:area)
	ar = Barangay.find(self.barangay_id)
            ar.area = @area[self.barangay_id] 
            ar.save
end

def compute_infra
	@infra = Zone.group("barangay_id").sum(:infra)
	i = Barangay.find(self.barangay_id)
            i.infra = @infra[self.barangay_id] 
            i.save
end
end
