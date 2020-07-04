#Write and Application to calculate additional fees for a rental car 

#If you're under 21 years old, you can't rent a car at all.
#If you're over 21 and under 25, you can rent with a $20 additional fee per day.
#If you're in NY, you also pay a state flat fee of $25 dollars.
#If you're in MI, you also pay a flat fee of $20.
#If you're over 25, you don't pay any additional fees.

#What pieces of data will we need from the user? 
#What data can we hard-code into our program? 

#Question 1: Age, state of residence, how many days
#Cost of a rental car per day. Which states charge extra fees -- MI, NY
#How much those fees are? 20, 25

#Greet user and explain how the program works
puts "Welcome to the Rental Car Fee Checker! To begin, enter your age."
#Get the users age
age = gets.strip.to_i
puts "age is #{age}"
#If the user is less than age 21
minimum_rental_age = 21
if age < 21 
  #Tell them they can't rent
  puts "Fuck outta here til you get older."
#if the age is over 25
elsif age >= 25 
  #tell them they can rent with no fee
puts "You can rent a car with no fee. V lucky."
#otherwise
else 
  #ask their state and how many days they are renting for
  puts "How many days do you need the whip?"
  days_renting = gets.strip.to_i 
  puts "Please enter your two letter state code"
  state = gets.strip
  #set the fee to be the number of days times the fee per day
  fee_per_day = 20 
  fee = days_renting *  fee_per_day 
  #if they are in Michigan, 
  case state
    #add 20 to the fee
  when "MI" 
    fee += 20
  #if they are in NY
  when "NY" 
    fee += 25
  end
    #add 25 to the fee
#tell the user their total fee  
  puts "You will owe #{fee}"
end 

