class Barangay < ActiveRecord::Base

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
	
	belongs_to :people
	has_many :zone, dependent: :destroy
	

	validates :name, presence: true, :uniqueness => {:scope => :municipality_id}
	validates :municipality_id, presence: true, :uniqueness => {:scope => :name}
	

def self.search(query)
  where("municipality_id = ?", "%#{query}%") 
end

private
def compute_pop
	@x = Barangay.group("municipality_id").sum(:population)
	allobject = Municipality.find(self.municipality_id)
            allobject.population = @x[self.municipality_id] 
            allobject.save
end

def compute_livestock
	@l = Barangay.group("municipality_id").sum(:livestock)
	ls = Municipality.find(self.municipality_id)
            ls.livestock = @l[self.municipality_id] 
            ls.save
end

def compute_agri
	@agri = Barangay.group("municipality_id").sum(:agri)
	ag = Municipality.find(self.municipality_id)
            ag.agri = @agri[self.municipality_id] 
            ag.save
end

def compute_commerce
	@commerce = Barangay.group("municipality_id").sum(:commercial)
	com = Municipality.find(self.municipality_id)
            com.commercial = @commerce[self.municipality_id] 
            com.save
end

def compute_area
	@area = Barangay.group("municipality_id").sum(:area)
	ar = Municipality.find(self.municipality_id)
            ar.area = @area[self.municipality_id] 
            ar.save
end

def compute_infra
	@infra = Barangay.group("municipality_id").sum(:infra)
	i = Municipality.find(self.municipality_id)
            i.infra = @infra[self.municipality_id] 
            i.save
end



end
