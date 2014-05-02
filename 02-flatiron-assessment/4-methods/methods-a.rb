
# i. Create a method to return the grade of a student, given that students name. ii. Then use it to refactor your work in 3.i.


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


def output_grade(school, student_name)
  school[:students].each do |person|
  puts person[:grade] if person[:name] == student_name 
  end
end  


output_grade(school, "Sophie")



########## SOME NOTES ###########

# Explanation:

# start with a statement that takes in the school hash and the students_name 
#take each person from the student hash and iterating over them  
#output that person's grade if the person == the student name that we passed in. 



# Other possibilities to try 


# def output_grade(name)
# 	school.each do |key, value|
# 		if key == :students
# 			value.each do |student_hash| 
# 			student_hash.each_value do |value|
#         puts value
#      			if name == 


# Other questions. How would we do this for teacher?


# def output_grade(school, teacher_name)
#   school[:instuctors].each do |teacher|
#     puts teacher[:subject] if teacher[:name] == teacher_name
#   end
# end 


