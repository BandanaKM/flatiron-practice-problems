# d. i. Create a method that adds a new key at the top level of the school hash, given a key and a value. ii. Then use it to add a "Ranking" key with the value 1.

school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}


def new_first_element(school, element_key, element_value)

	hash = {}
	hash[element_key.to_sym] = element_value
	hash.merge!(school)
	school.replace(hash)

end

puts new_first_element(school, "Ranking", 1)

#our method new_first_element takes in school, element_key, element value as parameters
# we create an empty hash
#we give the hash a key and a value, we make the key a symbol.to_sym
		# this will give us hash => {:element_key=>"element_value"}

# hash.merge!(school)

# takes the values of school and merges them into hash

# hash => {:element_key=>"element_value", :name=>"Happy Funtime School", :location=>"NYC", :instructors=>[{:name=>"Blake", :subject=>"being awesome"}, {:name=>"Ashley", :subject=>"being better than blake"}, {:name=>"Jeff", :subject=>"karaoke"}], :students=>[{:name=>"Marissa", :grade=>"B"}, {:name=>"Billy", :grade=>"F"}, {:name=>"Frank", :grade=>"A"}, {:name=>"Sophie", :grade=>"C"}]}


# school.replace(hash)
# moves all the contents of the hash hash into the school hash 

# school => 

# {:element_key=>"element_value", :name=>"Happy Funtime School", :location=>"NYC", :instructors=>[{:name=>"Blake", :subject=>"being awesome"}, {:name=>"Ashley", :subject=>"being better than blake"}, {:name=>"Jeff", :subject=>"karaoke"}], :students=>[{:name=>"Marissa", :grade=>"B"}, {:name=>"Billy", :grade=>"F"}, {:name=>"Frank", :grade=>"A"}, {:name=>"Sophie", :grade=>"C"}]}



# Another possible way?

# def add_hash(school, key, value) 
#   school.store(#{key}, #{value})
# end 

# add_hash(school, "Ranking", 1)

