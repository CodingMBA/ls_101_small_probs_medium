=begin

Problem Description: Write a method that takes an integer and returns the next featured number
that is greater than the argument.

Inputs: integer

Output: integer representing the next featured number that is greater than the argument.

Rules: Featured number is an odd number that is a multiple of 7 and whose digits occur exactly once each.

Problem Breakdown:
- start at the input number and loop
  - check each integer after it to see if it's a multiple of 7, if it's odd, and if it has no repeating integers
  - if it does, break the loop and return the number

Algorithm:
- Starting the argument passed in
- loop
  - Break if all of the following conditions are true
    - num % 7 == 0
    - num.odd? == true
    - num.to_s_chars loop through and compare each char to the next char and they can't be ==
    - increment the number by 1 with the += operator if not all 3 conditions are true
  - Return the number where these conditions are true

=end

def featured(number)
  number += 1
  
  loop do
    return number if number % 7 == 0 && number.odd? && number.to_s.chars.uniq == number.to_s.chars
    number += 1
    break if number >= 9_876_543_210
  end
  
  'There is no possible number that fulfills those requirements.'
end

p featured(999_999_987)