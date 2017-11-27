=begin

Problem Description: Write a method that takes the length of 3 sides of a triangle and returns the type of triangle

Inputs: 3 integers as arguments

Output: a symbol representing the type of triangle created by the given arguments
:equilateral - All 3 sides are of equal length
:isosceles - 2 sides are of equal length while the third is different
:scalene - All 3 sides are of different length
:invalid - If sum of the lengths of the two shortest sides are < length of the longest side

Rules: All sides must have lengths greater than 0

Problem Breakdown:
- Case statement to capture the 4 different conditions
  - if any of the arguments == 0; invalid
  - if any 2 sides (2 shortest sides) combined are less than the third side; invalid
  - if all 3 sides are equal; equilateral
  - if none of the sides are equal; scalene
  - else isosceles

Algorithm:
- See problem breakdown

=end

def triangle(s1, s2, s3)
  case
  when s1 == 0 || s2 == 0 || s3 == 0
    :invalid
  when s1 + s2 <= s3 || s1 + s3 <= s2 || s2 + s3 <= s1
    :invalid
  when s1 == s2 && s1 == s3
    :equilateral
  when s1 != s2 && s1 != s3 && s2 != s3
    :scalene
  else
    :isosceles
  end
end

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid