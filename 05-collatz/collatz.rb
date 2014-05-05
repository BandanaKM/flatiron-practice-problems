# The following iterative sequence is defined for the set of positive integers:
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

#essentially if we start with 13:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

# I'm looking for an integer under 1 million that produces the longest Array 


class Collatz 

	def initialize(value)
		@value = value
	end 

	def sequence
		counter = 0
			while @value > 1 do 
				if @value.odd?
					@value = 3 * @value + 1
				elsif @value.even?
					@value = @value / 2
				end 
			counter = counter + 1
			end
		return counter
	end 


end 

c = Collatz.new(13)
puts c.sequence 


# Remember, you must pass in a value into new. 

# How do I iterate through all numbers under 1000000 to get the longest starting



