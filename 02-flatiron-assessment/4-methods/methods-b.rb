# b. i.Create a method to update a instructor's subject given the instructor and the new subject. ii. Then use it to update Blake's subject to "being terrible".


def output_grade(school, student_name)
  school[:students].each do |person|
  puts person[:grade] if person[:name] == student_name 
  end
end  

