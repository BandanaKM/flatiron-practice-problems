
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

school.each do |key, value|
  if value.is_a?(String) || value.is_a?(Fixnum)
  puts value
end 

#the way this is done, is that first we can interate through hash and see if the

#If I try to do this the initial way, I get:

# school.each_value {|value| puts value} 

# Happy Funtime School
# NYC
# {:name=>"Blake", :subject=>"being awesome"}
# {:name=>"Ashley", :subject=>"being better than blake"}
# {:name=>"Jeff", :subject=>"karaoke"}
# {:name=>"Marissa", :grade=>"B"}
# {:name=>"Billy", :grade=>"F"}
# {:name=>"Frank", :grade=>"A"}
# {:name=>"Sophie", :grade=>"C"}