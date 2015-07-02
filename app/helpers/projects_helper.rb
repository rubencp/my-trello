module ProjectsHelper
 def project_responsible(manager_id)
 	a_person = Person.find_by_id(manager_id)
 	if a_person.nil?
 		"none"
 	else
 		a_person.name
 	end
 end

end
