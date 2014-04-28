
a = ["apple", "orange", "apple"] 

def apple_picker(a)
	a.collect {|w| w if w == "apple"}
end

puts apple_picker(a).compact! 



#collect vs select:
# select returns a value for each element in the array or hash based on a conditional being true 

#collect returns a value for each element in the array. we compact it to get rid of nils