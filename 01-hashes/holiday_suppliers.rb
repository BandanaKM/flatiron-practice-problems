holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}


# How would you access the second supply for the forth_of_july? ex: holiday_supplies[:spring][:memorial_day][0]

holiday_supplies[:summer][:forth_of_july][1]


# Add a supply to a Winter holiday.

holiday_supplies[:winter][:christmas][1] = "Cookies"

or 

holiday_supplies[:winter][:christmas] << "Cookies"


# Add a supply to memorial day.

holiday_supplies[:spring][:memorial_day][1] = "Ketchup"

or 

holiday_supplies[:spring][:memorial_day] << "Ketchup"


# Add a new holiday to any season with supplies.

holiday_supplies[:winter][:Gurpurab] = ["Parshaad"]


# Write a method to collect all Winter supplies from all the winter holidays. ex: winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]

def winter_supplies
  holiday_supplies[:winter].map do |holiday, supplies|
  supplies
end.flatten
end

puts winter_supplies(holiday_supplies)

#essentially, here we are collecting the key and value from the winter. outputing the value, and flattening it


# Write a loop to list out all the supplies you have for each holiday and the season.

> so I want all the values from all the winter supplies 


