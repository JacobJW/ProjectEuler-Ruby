# The sum of the squares of the first ten natural numbers is,

# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of
# the first ten natural numbers and the square of the sum
# is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of
# the first one hundred natural numbers and the square of the sum.

def sum_square_difference

  indidivual_squared = (1..100).reduce { |sum, num| sum + num ** 2 }
  sum_of_all = (1..100).reduce { |sum, num| sum + num }
  all_squared = sum_of_all ** 2
  difference = all_squared - indidivual_squared
  
  puts difference
end

sum_square_difference
