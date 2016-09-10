# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a**2 + b**2 = c**2

# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def triplet(a, b, c)
  if (a < b) &&
    (b < c) &&
    (a**2 + b**2 == c**2)
    return true
  end
end

found = false
match = nil

until found == true
  (1..998).each do |a|
    (1..998).each do |b|
      (1..998).each do |c|
        if (a + b + c == 1000) &&
          triplet(a, b, c)
          puts a
          puts b
          puts c
          found = true
        end
      end
    end
  end
end
