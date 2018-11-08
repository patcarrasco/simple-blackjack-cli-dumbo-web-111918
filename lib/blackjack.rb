def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  a = deal_card
  b = deal_card
  tot = a+b
  display_card_total(tot)
  tot
end

def hit?(total)
  # code hit? here
  prompt_user # ask for input
  input = get_user_input # save answer

  if input == 'h' # if answer is h
    total += deal_card # add to deck
  elsif input == 's' # if answer is s
    total # keep deck the same
  else
    invalid_command # state the command is wrong....
    # No need to code something here that redirects to beginning of hit?()
    # can just use the below UNTIL loop to ensure that game runs correctly
  end
  total # return the total at the end of calling hit?()
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  tot = initial_round
  until tot > 21 # once tot > 21, STOP
    tot = hit?(tot) # set new tot to value after hit?() called
    display_card_total(tot) # display new val to USER
  end
  end_game(tot)
end
