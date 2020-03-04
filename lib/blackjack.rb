def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total (total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  n=deal_card
  n+=deal_card
  display_card_total(n)
  n
end

def hit?(total)
  prompt_user
  n=get_user_input
  case n
  when "s"
  when "h"
    total+=deal_card
  else
    invalid_command
    hit?(total)
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  total=initial_round
  while total <= 21 do

  total=hit?(total)
  display_card_total(total)
  end
  end_game(total)
end
