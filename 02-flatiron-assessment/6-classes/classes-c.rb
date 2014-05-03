class School 
	attr_accessor :name, :location, :ranking, :students, :instructors

	@@SCHOOLS = {}

	def initialize(name, location, ranking, students, instructors)
		@name = name
		@location = location
		@ranking = ranking
		@students = []
		@instructors = []
		@@SCHOOLS << self   #review
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

 	def find_student(name)
 		student.each do |student|
 			if @name == name 
 					return student
 			end 
 		end
 	end 

end 



class Student
	attr_accessor :name, :grade, :favorite_color

	def initialize(name, grade, favorite_color)
		@name = name
		@grade = grade
		@favorite_color = favorite_color 
	end 

end 

school = School.new(nil, nil, nil)


#EXPLAIN 
