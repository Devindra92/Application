class Record < ApplicationRecord
	def self.search(search)
  	where("name ILIKE ? OR centre_no ILIKE ?", "%#{search}%", "%#{search}%") 
  end
end
