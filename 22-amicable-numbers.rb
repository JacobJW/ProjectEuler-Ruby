# Let d(n) be defined as the sum of proper divisors of n
# (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b
#  are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are
#  1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284.
#  The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

#Evaluate the sum of all the amicable numbers under 10000.

def d(n)
  divisors = []
  (1..n ** 0.5).each do |num|
    divisors << num if n % num == 0
  end
  (1...divisors.length).each do |index|
    divisors << n / divisors[index]
  end
  return divisors.inject(:+)
end

def amicable_pairs_under_10k
  amicable_numbers = []
  (1...1e4).each do |a|
    b = d(a)
    if (d(b) == a) && (a != b)
      amicable_numbers += [a, b]
    end
  end
  print amicable_numbers.uniq.inject(:+)
end

amicable_pairs_under_10k
