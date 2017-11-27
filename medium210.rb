=begin

Problem Description: Write a method that computes the difference between the square of the sum of
the first n positive integers and the sum of the squares of the first n positive integers

Inputs: integer n

Output: integer - see problem description

Rules: 

Problem Breakdown:
- sum the first n integers then square it
- square each of the first n integers and sum them
- subtract the second from the first

Algorithm:
- square_of_sums = 0
1.upto(n) { |num| sum += num}
sum**2
- sum_of_squares = 0
1.upto(n) { |num| sum += num**2 }
- square - sum

=end

def square_of_sums(n)
  sum = 0
  1.upto(n) { |num| sum += num }
  sum**2
end

def sum_of_squares(n)
  sum = 0
  1.upto(n) { |num| sum += num**2 }
  sum
end

def sum_square_difference(n)
  square_of_sums(n) - sum_of_squares(n)
end
  
p sum_square_difference(10)
