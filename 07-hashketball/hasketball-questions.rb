
# Questions:

# def team_name(game, location)
#   game[:home][:teamname] if game[:home] == location
#   game[:away][:teamname] if game[:home] == location
# end 

# puts ""
# puts "The team"



# # trying to understand why this didn't work: 

# def player_numbers(game, team_name)
#   player_nums = []
#   player_num_home = game[:home][:players].each do |player_hash| return player_hash[:number] if game[:home][:teamname] == "La Lakers"
#   end 
#   player_nums << player_num_home

#   player_num_away = game[:away][:players].each do |player_hash| return player_hash[:number] if game[:away][:teamname] == "San Francisco Watermelons"
#   end 
#   player_nums << player_num_away 
#   puts player_nums

# end 


# puts ""
# puts "The player numbers for the San Francisco Watermelons are:"
# puts player_numbers(game, "San Francisco Watermelons")


# # the other thing I was thinking of doing wa siterating over this -- but didn't do it this way 


# def player_stats(game, player_name)
#   statistics = []
#    if game[:home][:players][:playername] == player_name
#     game[:home][:players].each do |player_hash|
#      return player_hash[:stats] 
#     end 
#    end 

#   elsif game[:home][:players][:playername] == player_name
#    game[:away][:players].each do |player_hash|
#     player_hash.each do 
#     end 
#   end 
#   player_nums
# end 
