# palindromic number reads the same both ways.
# The largest palindrome made from the product
# of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome?(string)
  if string != string.reverse
    return false
  else
    return true
  end
end

def three_digit_products
  palindrome_products = []

  (100..999).each do |num1|
    (100..999).each do |num2|
      if is_palindrome?((num1 * num2).to_s)
        palindrome_products << num1 * num2
      end
    end
  end
  puts palindrome_products.max
end

three_digit_products
