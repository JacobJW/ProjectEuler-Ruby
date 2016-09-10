# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1)
# contains 10 terms. Although it has not been proved yet (Collatz Problem),
# it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

start_time = Time.now

def collatz_sequence(number)
  terms = 1

  while number != 1
    if number % 2 == 0
      number /= 2
    else
      number = (number * 3) + 1
    end
    terms += 1
  end
  return terms
end

pair = [0, 0]
(1...1e6).each do |num|
  if collatz_sequence(num) > pair[1]
    pair = [num, collatz_sequence(num)]
    print pair
    puts("\n")
  end
end

puts "#{pair} found in #{Time.now - start_time} seconds"
