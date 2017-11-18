def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  digits = number.to_s.chars
  digits[-n..-1] = rotate_array(digits[-n..-1])
  digits.join.to_i
end

def max_rotation(number)
  num_digits = (number.to_s.size)
  num_digits.downto(1) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

p max_rotation(735291)
p max_rotation(3)
