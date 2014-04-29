
# b. Write a statement to print out all the key/value pairs in the hash

instructor = {:name=>"Ashley", :age=>27}

instructor.each {|key, value| puts "#{key} : #{value}" }
