$employees = [ {first_name: "Dipper", last_name: "Pines", role: "Boss"},
		{first_name: "Morty", last_name: "Smith", role: "Truck Driver"},
		{first_name: "Anna", last_name: "Bell", role: "Admin"} ]

def find_employees_role(name)
  names = name.split(' ')

	employee = $employees.find { |el| el[:first_name] == names[0] && el[:last_name] == names[1]}

	if employee
		puts employee[:role]
	else
		puts "Does not work here!"
	end

end



find_employees_role("Morty Smith") # Truck Driver"
find_employees_role("Anna Bell") # "Admin"
find_employees_role("Punk Pines") # "Does not work here!"
