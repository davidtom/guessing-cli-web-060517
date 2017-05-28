# Code your solution here!

def generate_number
  rand(1..6).to_s
end

def get_guess
  puts "Guess a number between 1 and 6."
  guess = gets.chomp
end

def correct_guess?(number, guess)
  return true if number == guess
  false
end

def exit_game
  puts "Goodbye!"
end

def run_guessing_game

  while true
    number = generate_number
    guess = get_guess

    case guess
    when number
      puts "You guessed the correct number!"
    when "exit"
      exit_game
      break
    else
      puts "The computer guessed #{number}."
    end
  end

end
