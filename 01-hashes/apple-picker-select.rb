# Create a method, apple_picker, that will pick all the apples out of an array. Implement it with collect and then implement it with select. Write a sentence about how select differs from collect.

a = ["apple", "orange", "apple"] #=> ["apple", "apple"]

def apple_picker(a)
	a.select {|w| w == "apple"}
end 

puts apple_picker(a)


#when you puts a method with a paramter, you have to pass in a parameter to puts. 


#collect vs select:
# select returns a value for each element in the array or hash based on a conditional being true 

#collect returns a value for each element in the array. 
