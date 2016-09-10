# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

def digit_sum(number)
  # Splits number into individual digits, converts them to int and sums them
  return number.to_s.split('').map { |num| num.to_i }.inject(:+)
end

def factorial(num)
  product = 1
  (1).upto(num) do |number|
    product *= number
  end
  return product
end

time_start = Time.now
digit_sum(factorial(100))
elapsed = Time.now - time_start

puts "#{elapsed} seconds to return #{digit_sum(factorial(100))}"
