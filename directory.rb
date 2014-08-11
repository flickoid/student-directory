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

# puts the names and cohorts of the students along with their index number
def print_with_index(students)
	students.each_with_index do |student, index| 
		puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
	end
end

# asks for user input for names of students, adds them to an array then a hash

	def get_input
		input_given = gets.chomp
		return nil if input_given == ""
		puts "You entered '#{input_given}', are you happy with that? Y or N"
		confirmation = gets.chomp
		while confirmation.upcase == 'N'
			puts "Please re-enter"
			input_given = gets.chomp
			puts "You entered '#{input_given}', are you happy with that? Y or N"
			confirmation = gets.chomp
		end
		input_given
	end


def input_students_multi
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	@students = []
	puts "Do you want to enter a student? Y / N"
	answer = gets.chomp
	while answer.downcase == "y"
		@students << build_student_from_input
		puts "Do you want to enter a student?"
		answer = gets.chomp
	end
end

def build_student_from_input
	catagories = ["name", "cohort", "hobbies", "country", "cartoon character"]
	entries = catagories.map do |catagory|
		puts "please enter #{catagory}"
		get_input
	end
	name, cohort, hobbies, country, cartoon = entries	
	create_student(name, cohort, hobbies, country, cartoon)
end


def create_student(name, cohort, hobbies, country, cartoon)
	{:name => name, :cohort => cohort, :hobbies => hobbies, :country => country, :cartoon => cartoon}
end


def print(students)
	students.each do |student| 
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
