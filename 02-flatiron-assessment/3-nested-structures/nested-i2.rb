
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
    value.each do |student_hash|
      student_hash.each_value do |value|
        puts value
      end
    end
  end 

end 

# Output:

# Happy Funtime School
# NYC
# Blake
# being awesome
# Ashley
# being better than blake
# Jeff
# karaoke
# Marissa
# B
# Billy
# F
# Frank
# A
# Sophie
# C


