


=begin
students = ["Dr. Hannibal Lecter", "Darth Vader", "Nurse Ratched", "Michael Corleone", "Alex De Large", "The Alien", "Terminator", "Freddy Krueger", "The Joker",]

students.each {|name| puts name}
print "Overall, we have #{students.count} great students"
=end
def user_input
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	students = []
	name = gets.chomp
			while !name.empty? do 
			students << {:name => name, :cohort => :March}
			name = gets.chomp
			end
	students
end

students = user_input

def print_mycohort
	puts "The students of my cohort at Makers Academy"
	puts "__________"
end

def printer(students)
	x = 1
	students.each {|name| print "#{x} #{students[:name]}\n" ; x += 1}
end

def print_footer(x)
	
	puts "_________________"
	puts "Overall, we have #{x.count} great students"
end


user_input

print_mycohort

printer(students)

print_footer(students)