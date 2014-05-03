# c. i. Create a method to add a new student to the schools student array. ii. Then use it to add yourself to the school students array.


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


def add_student(school, student_name, student_grade) 
  school[:students] << {:name => student_name, :grade => student_grade}
end 

add_student(school, "Bandana", "Q")

puts school


#this doesn't work because you have an array of hashes, and you are adding it on to the last hash, as a key value pair within that hash

# def add_student(school, new_student, student_grade)
#   school[:students].last.store(new_student, student_grade)
# end  

# add_student(school, "Bana", "Q")
# # puts school

# OUTPUT:

# {:name=>"Happy Funtime School", :location=>"NYC", :instructors=>[{:name=>"Blake", :subject=>"being awesome"}, {:name=>"Ashley", :subject=>"being better than blake"}, {:name=>"Jeff", :subject=>"karaoke"}], :students=>[{:name=>"Marissa", :grade=>"B"}, {:name=>"Billy", :grade=>"F"}, {:name=>"Frank", :grade=>"A"}, {:name=>"Sophie", :grade=>"C", "Bana"=>"Q"}]}
