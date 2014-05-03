
# c. Create an attr_accessor for name, location, instructors, and students. Create an attr_reader for ranking.



class School 
	attr_accessor :name, :location, :students, :instructors
	attr_reader :ranking 

	def initialize(name, location, ranking, students, instructors)
		@name = name
		@location = location
		@ranking = ranking
		@students = []
		@instructors = [] 
	end 

end 