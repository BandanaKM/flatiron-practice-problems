# d. Create a method to set ranking, given a ranking value.


class School 
	attr_accessor :name, :location, :ranking, :students, :instructors

	@@school = {}

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

end 