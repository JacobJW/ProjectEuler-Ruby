# By listing the first six prime numbers:
# 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10001st prime number?

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

def nth_prime(n)
  count = 0
  num = 1
  while count != n
    num += 2
    if is_prime?(num)
      count += 1
    end
  end
  puts num
end

nth_prime(10001)
