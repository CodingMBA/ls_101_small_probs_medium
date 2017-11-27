=begin

Problem Description: 

Inputs: 

Output: 

Rules: 

Problem Breakdown:
- 

Algorithm:
- 

=end


def triangle(a1, a2, a3)
  case
  when a1 == 0 || a2 == 0 || a3 == 0
    :invalid
  when a1 + a2 + a3 != 180
    :invalid
  when a1 < 90 && a2 < 90 && a3 < 90
    :acute
  when a1 > 90 || a2 > 90 || a3 > 90
    :obtuse
  else
    :right
  end
end

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid