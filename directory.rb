

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
		students << {:name => name, :cohort => "March"}
		name = gets.chomp
		end
	printer(students)
end

def student_list
	print "Students list: \n______________\n"
end


def printer(students)
	x = 0
	student_list
	while x < students.count
	print "#{x + 1}. #{students[x][:name]} from the #{students[x][:cohort].capitalize} cohort\n"
	x += 1
	end

	print_footer(students)
end


def print_footer(students)
	
	print "_________________\n"
	print "Overall, we have #{students.count} great students"
end


user_input

