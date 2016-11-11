
def welcome
  puts "Welcome to the Blackjack Table" # code #welcome here
end

def deal_card
  rand(1..11)# code #deal_card here
end

def display_card_total(n)
  puts "Your cards add up to #{n}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"# code #prompt_user here
end

def get_user_input
  gets.chomp  #get_user_input here
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  deal_card
  deal_card
  n = deal_card + deal_card
  display_card_total(n)
  n
end

def hit?(n)
  prompt_user
  answer = get_user_input
  if answer == 's'
    n
  elsif answer == 'h'
    n += deal_card
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  n = initial_round
  final = hit?(n)
  until final > 21
    final
  end
  display_card_total(final)
  end_game(final)
end
