
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


# i. Write a statement to print out all the values in the school. ***FLAG












# a. Add a key to the school hash called "founded_in" and set it to the value 2013.

school[:founded_in] = 2013


# b. Add a student to the school's students' array.

school[:students] << {:name => "Bandana", :grade => 10}


# c. Remove "Billy" from the students' array.

school[:students][:name].delete("Billy")

# d. Add a key to every student in the students array called "semester" and assign it the value "Summer".


# e. Change Ashley's subject to "being almost better than Blake"

school[:instructors][1][:subject] = "being almost better than Blake"

# hash, hash, array, hash 


# f. Change Frank's grade from "A" to "F".

school[:students][2][:grade] = "F"


# g. Return the name of the student with a "B".

# # hash, hash, array, hash 

school[:students].each do |person| 
  puts person[:name] if person[:grade] == 'B'
end 


# h. Return the subject of the instructor "Jeff".

school[:instructors].each do |person|
  puts person[:subject] if person[:name] == "Jeff"
end 


# i. Write a statement to print out all the values in the school. ***FLAG



