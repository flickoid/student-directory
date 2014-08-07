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
	puts "The students of my cohort at Makers Academy"
	puts "------------------------"
end

def print(students)
	students.each do |student| 
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

# def start_with(students, start_letter)
# 	students.select {|student| student[:name][0] == start_letter}
# end

# puts the names and cohorts of the students along with their index number
def print_with_index(students)
	students.each_with_index do |student, index| 
		puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
	end
end

# prints footer with number of given students
def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

# asks for user input for names of students, adds them to an array then a hash
def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"

	students = []

	name = gets.chomp

	while !name.empty? do
		students << {:name => name, :cohort => :August}
		puts "Now we have #{students.length} students"

		name = gets.chomp
	end
	students
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

students = input_students
print_header
# print(start_with(students,"D"))
# print selection(students)
print less_twelve(students)
print_footer(students)