def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return 1 + rand(11)
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
  input = gets.chomp
  return input
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card()
  card2 = deal_card()
  sum = card1+card2

  display_card_total(sum)

  return sum
end

def hit?(num)
  # code hit? here
  prompt_user()
  input = get_user_input()

  if(input == 'h')
    newcard = deal_card()
    total = num + newcard
    display_card_total(total)
    return total
  elsif (input == 's')
    return num
  else
    invalid_command()
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user()
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  currentsum = initial_round()
  currentsum = hit?(currentsum)

  while currentsum < 22
    currentsum = hit?(currentsum)
  end

  end_game(currentsum)
end
