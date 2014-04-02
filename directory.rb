=begin

students = ["Dr. Hannibal Lecter", "Darth Vader", "Nurse Ratched", "Michael Corleone", "Alex De Large", "The Alien", "Terminator", "Freddy Krueger", "The Joker",]

students.each {|name| puts name}
print "Overall, we have #{students.count} great students"
=end

def print_head
	puts "The students of my cohort at Makers Academy"
	puts "__________"
end

def print(names)
	names.each {|name| puts name}
end

def print_footer(names)
	puts "Overall, we have #{names.count} great students"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	students = []
	name = gets.chomp

		while !name.empty? do 
			students << {:name => name, :cohort => :november}
			puts "Now we have #{students.length} students"
			name = gets.chomp
		end

end

students = input_students

print_head

print(students)

print_footer(students)