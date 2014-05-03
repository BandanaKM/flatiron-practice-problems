# f. Create a method to remove a student from the school, given a name.


class School 
	attr_accessor :name, :location, :ranking, :students, :instructors

	@@SCHOOLS = {}

	def initialize(name, location, ranking, students, instructors)
		@name = name
		@location = location
		@ranking = ranking
		@students = []
		@instructors = [] 
	end 

	def set_ranking(value)
		@value = value
	end 

	def add_student(name, grade, semester)
		name = Student.new(name, grade, semester)
		@students << name 
	end 

	def remove_student(name)
		@student.each do |student|
				@students.delete(student) if student[:name] == name 
 	end 

 	def reset
 		@@SCHOOLS.clear
 	end 

end 