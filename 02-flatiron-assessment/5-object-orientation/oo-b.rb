
# b. Define an initialize method for the School class.

# i. Give your School class the instance variables: name, location, ranking, students, instructors. **NOTE: These variables should be of the same type as they are in the hash above.

# ii. Rewrite your initialize method definition to take a parameter for each instance variable.

# iii. Initialize each instance variable with the value of the corresponding parameter.


class School 
	attr_accessor :name, :location, :ranking, :students, :instructors

	def initialize(name, location, ranking, students, instructors)
		@name = name
		@location = location
		@ranking = ranking
		@students = []
		@instructors = [] 
	end 

end 