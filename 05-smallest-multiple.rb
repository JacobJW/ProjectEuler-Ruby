# 2520 is the smallest number that can be divided
# by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly
# divisible by all of the numbers from 1 to 20?

def smallest_multiple
  check_num = 0
  found = false

  while found == false
    check_num += 2
    conditions_met = 0
    (11..20).each do |num|
      # check_num has to be divisble by 1..10, which is 2520.
      if (check_num % num != 0) || (check_num % 2520 != 0)
        break
      else
        # Ensures all division requirements were met
        conditions_met += 1
        if conditions_met == 10
          found = true
        end
      end
    end
  end

  puts check_num
end

smallest_multiple

