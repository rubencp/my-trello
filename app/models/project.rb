class Project < ActiveRecord::Base
	belongs_to :person 

 def responsible
 	unless self.person.nil? 
 		self.person.name
 	end
 end

end
