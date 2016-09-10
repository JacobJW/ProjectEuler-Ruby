# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

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
    true
  end
end

def largest_prime_factor(number)
  largest_prime_factor = []

  begin
    (2..(number ** 0.5)).each do |check|
      if (number % check == 0) && (is_prime?(check) == true)
        largest_prime_factor << check
        number /= check
        raise ArgumentException
      end
    end
  # Restarts block to ensure prime factorization is correctly done.
  rescue
    retry unless is_prime?(number) == true
  end
  # Added in to add in the last prime number
  # b/c primality is used a condition for retrying block
  largest_prime_factor << number

  print largest_prime_factor
  puts largest_prime_factor.max
end

time_start = Time.now
largest_prime_factor(600851475143)
time_end = Time.now

time_delta = time_end - time_start

puts "It took #{time_delta} seconds to find the prime factors."



# All numbers can be represented as a unique product of primes
