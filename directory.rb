# students = [
# 	{:name => "Ruth Earle", :cohort => :August},
# 	{:name => "Andy Gates", :cohort => :August},
# 	{:name => "Marc Singh", :cohort => :August},
# 	{:name => "Faisal Aydarus", :cohort => :August},
# 	{:name => "Ethel Ng", :cohort => :August},
# 	{:name => "Kevin Daniells", :cohort => :August},
# 	{:name => "Maya Driver", :cohort => :August},
# 	{:name => "Leopold Kwok", :cohort => :August},
# 	{:name => "James McNeil", :cohort => :August},
# 	{:name => "Jerome Pratt", :cohort => :August},
# 	{:name => "David Wickes", :cohort => :August},
# 	{:name => "Javier Silverio", :cohort => :August},
# 	{:name => "Elliot Lewis", :cohort => :August},
# 	{:name => "Ben Tillett", :cohort => :August},
# 	{:name => "Vincent Koch", :cohort => :August},
# 	{:name => "Michelle Ballard", :cohort => :August},
# 	{:name => "Tatiana Soukiassian", :cohort => :August},
# 	{:name => "Mervé Silk", :cohort => :August},
# 	{:name => "Albert Vallervu", :cohort => :August},
# 	{:name => "Lovis Schultze", :cohort => :August},
# 	{:name => "Chris Oatley", :cohort => :August},
# 	{:name => "Spike Lindsey", :cohort => :August},
# 	{:name => "Nick Roberts", :cohort => :August},
# 	{:name => "Henry Stanley", :cohort => :August}
# ]

def print_header
	puts "The students of my cohort at Makers Academy".center(100)
	puts "------------------------".center(100)
end





# Dave's code
# def start_with(students, start_letter)
# 	students.select {|student| student[:name][0] == start_letter}
# end

# puts the names and cohorts of the students along with their index number
def print_with_index(students)
	students.each_with_index do |student, index| 
		puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
	end
end



# asks for user input for names of students, adds them to an array then a hash
# def input_students
# 	puts "Please enter the names of the students"
# 	puts "To finish, just hit return twice"

# 	students = []

# 	name = gets.chomp

# 	while !name.empty? do
# 		students << {:name => name, :cohort => :August}
# 		puts "Now we have #{students.length} students"

# 		name = gets.chomp
# 	end
# 	students
# end


def input_students_multi
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"

	@students = []
	
	name = gets.chomp

	while !name.empty? do
		@students << build_student_from_input(name)
		puts "Now we have #{@students.length} students"
		puts "Please enter the name of the next student"
		name = gets.chomp
	end
end

def build_student_from_input(name)
	
	puts "Please enter their cohort"
	cohort = gets.chomp
	if cohort.empty?
		cohort = "blank"
	end

	puts "Please enter their hobbies"
	hobbies = gets.chomp
	if hobbies.empty?
		hobbies = "blank"
	end

	puts "Please enter their country of birth"
	country = gets.chomp
	if country.empty?
		country = "blank"
	end

	puts "What is their favourite cartoon character?"
	cartoon = gets.chomp
	if cartoon.empty?
		cartoon = "blank"
	end

	create_student(name, cohort, hobbies, country, cartoon)
end

def create_student(name, cohort, hobbies, country, cartoon)
	{:name => name, :cohort => cohort, :hobbies => hobbies, :country => country, :cartoon => cartoon}
end

# changes .each to while loop
# def print_loop(students)
# 	length = students.length
# 	count = 0
# 	while count < length do 
# 		puts "#{students[count][:name]}, #{students[count][:cohort]} cohort"
# 		count += 1
# 		end
# end

def print(students)
	@students.each do |student| 
		puts "#{student[:name]} (#{student[:cohort]} cohort) Hobbies include #{student[:hobbies]}, born in #{student[:country]}. Thinks that #{student[:cartoon]} should be president of the USA".center(100)
	end
end

# allows you to choose a letter and will then select only the students whose names begin with that letter
def selection(students)
	puts "Please enter a letter"
	letter = gets.chomp.upcase
	students.select {|student| student[:name][0] == letter}
end

# selects the students whose names have less than 12 characters
def less_twelve(students)
	students.select {|student| student[:name].length < 12}
end

# prints footer with number of given students
def print_footer(names)
	puts "Overall, we have #{names.length} great students".center(100)
end

input_students_multi
print_header
print(@students)
print_footer(@students)
# print(start_with(students,"D"))
# print selection(students)
# print less_twelve(students)
