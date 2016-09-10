#Each new term in the Fibonacci sequence is generated
# by adding the previous two terms. By starting with
# 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

#By considering the terms in the Fibonacci sequence
#whose values do not exceed four million, find the sum
#of the even-valued terms.

def fibonacci_even_num_sum(upper_limit)
  sum = 0
  fibonacci_numbers = [1, 2]

  while fibonacci_numbers[-1] < upper_limit
    fibonacci_numbers << fibonacci_numbers[-1] + fibonacci_numbers[-2]
  end
  fibonacci_numbers.pop

  fibonacci_numbers.each do |num|
    sum += num if num % 2 == 0
  end
  puts sum
end

fibonacci_even_num_sum(4e6)
