
# Then use it to refactor your work in 3.i.

#This is essentially outputting all the values, plus the grade of Sophie that I entered as a string in my parameters


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
  school.each do |key, value|
    if value.is_a?(String) || value.is_a?(Fixnum)
      puts value
    elsif key == :instructors
      value.each do |instructor_hash|  
        instructor_hash.each_value do |value|
          puts value
        end
      end
    elsif key == :students
      school[:students].each do |person|
      puts person[:grade] if person[:name] == student_name 
      end
    end 

end 

end

output_grade(school, "Sophie")

# # Output:
# Happy Funtime School
# NYC
# Blake
# being awesome
# Ashley
# being better than blake
# Jeff
# karaoke
# C