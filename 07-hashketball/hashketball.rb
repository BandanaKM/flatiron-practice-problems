# require 'pry'
 

game = {
  :home => { :teamname => "LA Lakers",
             :colors => ["gold", "orange"],
             :players => [
               {:playername => "Raymond Gan",
                :number => 3,
                :shoesize => 12,
                :stats => {
                  :points => 20,
                  :rebounds => 5,
                  :assists => 8,
                  :steals => 10,
                  :blocks => 15,
                  :slamdunks => 20
                 }
                },
               {:playername => "Sam Wang",
                :number => 2,
                :shoesize => 16,
                :stats => {
                  :points => 12,
                  :rebounds => 4,
                  :assists => 7,
                  :steals => 7,
                  :blocks => 15,
                  :slamdunks => 10
                  }
                },
               {:playername => "Hercule Poirot",
                :number => 2,
                :shoesize => 14,
                :stats => {
                  :points => 24,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 4,
                  :blocks => 5,
                  :slamdunks => 5
                  }
                },
               {:playername => "Batman",
                :number => 8,
                :shoesize => 15,
                :stats => {
                  :points => 33,
                  :rebounds => 3,
                  :assists => 2,
                  :steals => 1,
                  :blocks => 1,
                  :slamdunks => 0
                  }
                },
               {:playername => "Yo Momma",
                :number => 33,
                :shoesize => 15,
                :stats => {
                  :points => 6,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 22,
                  :blocks => 5,
                  :slamdunks => 12
                  }
                }
              ]    
          },
  :away => { :teamname => "San Francisco Watermelons",
             :colors => ["blue", "red"],
             :players => [
               {:playername => "Crazy Eight",
                :number => 0,
                :shoesize => 16,
                :stats => {
                  :points => 22,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 3,
                  :blocks => 1,
                  :slamdunks => 1
                  }
                },
               {:playername => "Frodo Baggins",
                :number => 30,
                :shoesize => 14,
                :stats => {
                  :points => 12,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 12,
                  :blocks => 12,
                  :slamdunks => 7
                  }
                },
               {:playername => "Janet Jackson",
                :number => 11,
                :shoesize => 17,
                :stats => {
                  :points => 17,
                  :rebounds => 19,
                  :assists => 10,
                  :steals => 3,
                  :blocks => 1,
                  :slamdunks => 15
                  }
                },
               {:playername => "Goofy",
                :number => 1,
                :shoesize => 19,
                :stats => {
                  :points => 26,
                  :rebounds => 12,
                  :assists => 6,
                  :steals => 3,
                  :blocks => 8,
                  :slamdunks => 5
                  }
                },
               {:playername => "Mickey Mouse",
                :number => 31,
                :shoesize => 15,
                :stats => {
                  :points => 19,
                  :rebounds => 2,
                  :assists => 2,
                  :steals => 4,
                  :blocks => 11,
                  :slamdunks => 1
                  }
                }
               ]
   
  }
}

# structure 

# game hash 
#   teamname hash (2)
#   color hash
#       color array 
#   player hash (5)
#     playername hash
#     number hash
#     shoesize hash
#     stats hash
#       points hash 
#       rebounds hash
#       assists hash
#       steals hash
#       blocks hash
#       slamdunks hash 



# Return the number of points scored for any player.

def points(game, player)
  game[:home][:players].each do |player_hash|
    return player_hash[:stats][:points] if player_hash[:playername] == player
  end

  game[:away][:players].each do |player_hash|
    return player_hash[:stats][:points] if player_hash[:playername] == player
  end 

end 

# "The total points for Mickey are" 
# puts points(game,'Mickey Mouse') "."  

puts ""
puts "The points scored by Mickey Mouse are:"
puts points(game,'Mickey Mouse') 

# we're accessing the player_hash and iterating through it for each player. return the points in the player hash if it's for this player

# Return the shoe size for any player.

def shoe(game, player)
  game[:home][:players].each do |player_hash|
    return player_hash[:shoesize] if player_hash[:playername] == player
  end 
  
  game[:away][:players].each do |player_hash|
    return player_hash[:shoesize] if player_hash[:playername] == player
  end 
end 


puts ""
puts "The shoesize for Crazy Eight are:"
puts shoe(game,'Crazy Eight') 


# # Return both colors for any team.

def team_colors(game, teamname)
    game[:away][:colors] if game[:home][:teamname] == teamname
    game[:home][:colors] if game[:home][:teamname] == teamname
    end

puts ""
puts "The colors for the Lakers are:"
puts team_colors(game, 'LA Lakers') 


# Return both teams names.

def team_names(game)
  teams = []
  teams << game[:home][:teamname]
  teams << game[:away][:teamname]
  puts teams 
end 

puts ""
puts "The teamnames are:"
puts team_names(game)


# Return all the player numbers for a team.

# we're accessing the player_hash and iterating through it for each player. return the points in the player hash if it's for this player


def player_numbers(game, team_name)
  player_nums = []
   if game[:home][:teamname] == team_name
    game[:home][:players].each do |player_hash|
      player_nums << player_hash[:number]
  end 

  elsif game[:away][:teamname] == team_name
   game[:away][:players].each do |player_hash|
    player_nums << player_hash[:number]
    end 
  end 
  player_nums
end 

puts ""
puts "The player numbers for the San Francisco Watermelons are:"
puts player_numbers(game, "San Francisco Watermelons")


# Return all the stats for a player.


def player_stats(game, player)
  game[:home][:players].each do |player_hash| 
    return player_hash[:stats] if player_hash[:playername] == player
  end 

  game[:away][:players].each do |player_hash|
    return player_hash[:stats] if player_hash[:playername] == player
  end
end 

puts ""
puts "The player stats for Batman are:"
puts player_stats(game, "Batman")


# Return the rebounds for the player with the largest shoe size.


# Great news! You're going to an NBA game! The only catch is that you've been volunteered to keep stats at the game.



# Using Nested Hashes, define a game, with two teams, their players, and the players stats:

# The game has two teams.
# A team has:
# A name
# Two colors
# Each team should have at least 5 players
# Each player should have a:


# name
# number (like their jersey number)
# shoe size
# Each player should have the following stats:



# points
# rebounds
# assists
# steals
# blocks
# slam dunks

# Using the power of Ruby, and the Hashes you created above, answer the following questions:

# Return the number of points scored for any player.

# Return the shoe size for any player.

# Return both colors for any team.

# Return both teams names.

# Return all the player numbers for a team.

# Return all the stats for a player.

# Return the rebounds for the player with the largest shoe size.




# Bonus Questions:

# Define methods to return the answer to the following questions:

# Which player has the most points?

# Which team has the most points?

# Which player has the longest name?

# Super Bonus:

# Write a method that returns true if the player with the longest name had the most steals


