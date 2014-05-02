# b. i.Create a method to update a instructor's subject given the instructor and the new subject. ii. Then use it to update Blake's subject to "being terrible".


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


def output_grade(school, instructor_name, new_subject)
  school[:instructors].each do |person|
  	if person[:name] == instructor_name
  		person[:subject] == new_subject  
  		puts person[:subject]
  	end
  end 
end  

output_grade(school, instructor_name, new_subject)