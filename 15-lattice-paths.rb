# Starting in the top left corner of a 2×2 grid,
# and only being able to move to the right and down,
# there are exactly 6 routes to the bottom right corner.


# How many such routes are there through a 20×20 grid?

start_time = Time.now

def factorial(num)
  product = 1
  (1).upto(num) do |number|
    product *= number
  end
  return product
end

def combinations(n, k)
  return (factorial(n)) / ((factorial(k)) * (factorial(n - k)))
end

# n = 20 + 20 (20x20 grid), k = steps needing to taken = 20
puts "#{combinations(40,20)} found in #{(Time.now - start_time)* 1000} seconds"
