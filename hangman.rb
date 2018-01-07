WORD = ["apple", "banana", "catfish", "dolphin", "elephant"].sample
guesses = []

print "Please enter your name > "
name = gets.chomp # equivalent of strip()

puts "Hello #{name.capitalize}! I'm thinking of a word... can you guess it?"
name = nil

still_guessing = true

while true

  still_guessing = false

  WORD.each_char do |letter|
    if guesses.include? letter
      print letter
    else
      print '_'
      still_guessing = true
    end
  end
  puts

  if not still_guessing
    break
  end

  print ' > '
  guess = gets.chomp

  if guess.length > 1
    puts "Your guess must be one character!"
    next
  end

  if not guesses.include? guess
    guesses.push guess
  end
end

puts "Well done! You guessed correctly. The word was #{WORD}"
