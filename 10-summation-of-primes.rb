# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def is_prime?(num)
  if num < 2
    false
  elsif num == 2
    true
  else
    (2..(num ** 0.5)).each do |possible_factor|
      if num % possible_factor == 0
        return false
      end
    end
    return true
  end
end

sum = 0

num = 0

until num == 1999999
  if is_prime?(num)
    sum += num
  end
  num += 1
end

puts "\n\n"
puts sum
