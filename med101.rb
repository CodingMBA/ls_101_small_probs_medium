def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1])
p rotate_array(['a', 'b', 'c'])
