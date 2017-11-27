=begin

Problem Description: Write a method that takes a string and returns a hash:
  - lowercase: %, uppercase: %, neither: %

Inputs: string

Output: hash with 3 key-value pairs

Rules: lower, upper, and neither should add up to 100

Problem Breakdown:
- Create an empty hash
- Iterate over string characters to determine if they are uppercase, lowercase, or nonalpha
- divide the number of each by the total number of characters to get percentages

Algorithm:
- Create a new hash with keys and values = 0
- Call chars on the string to create an array of strings
- iterate over the array of chars with goal to populate the hash
  - Call each on the array for each char:
    - use if, elsif with RegEx a-z for lower case, A-Z for uppercase, else for neither
    - Use += 1 for each match
- iterate over the hash with each
  - convert each value to current value / string.size / 100
-Return the hash

=end

require 'pry'

def letter_percentages(string)
  letter_cases = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    if char =~ /[a-z]/
      letter_cases[:lowercase] += 1
    elsif char =~ /[A-Z]/
      letter_cases[:uppercase] += 1
    else
      letter_cases[:neither] += 1
    end
  end

  letter_cases.each do |key, value|
    letter_cases[key] = value.to_f / string.size * 100
  end
  letter_cases
end

p letter_percentages('AbCd +Ef')