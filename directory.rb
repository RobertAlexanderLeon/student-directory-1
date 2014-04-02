

=begin

students = ["Dr. Hannibal Lecter", "Darth Vader", "Nurse Ratched", "Michael Corleone", "Alex De Large", "The Alien", "Terminator", "Freddy Krueger", "The Joker",]

students.each {|name| puts name}
print "Overall, we have #{students.count} great students"
=end

def user_input
	print "Hi, please enter students!\n"
	name = gets.chomp
	students = []
		while !name.empty? do
		students << {:name => name, :cohort => :march}
		name = gets.chomp
		end
	printer(students)
end

def student_list
	print "Students list: \n______________\n"
end


def printer(students)
	x = 1
	student_list
	students.each do |name| 
	if name[:name].downcase.chars.first == "a" then print "#{x}. #{name[:name]} from the #{name[:cohort].capitalize} cohort\n"
	x += 1
	end
	end
	print_footer(students)
end


def print_footer(students)
	
	print "_________________\n"
	print "Overall, we have #{students.count} great students"
end


user_input

