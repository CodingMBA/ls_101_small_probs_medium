# FACTS
# Asterisks and spaces fit in an n x n grid
# The number of asterisks grows by 2 in each subsequent row.
  # Odd number sequence - 1, 3, 5, 7, 9
# The number of rows == n
# The number of spaces + asterisks per row = n
# The middle row == asterisks * n
# Equal number of spaces on either side of the asterisks
  # num_spaces on each side = (n - row #)/2
# Bottom half is a mirror image of the top half
  # Inverse mathematical relationship of spaces to asterisks
# No collection to start with; starting from nothing
# There are 3 pieces to the structure
  # top
  # middle
  # bottom

# FUNCTIONAL PIECES
# loop through some logic a certain number of times for top - do/while loop
# puts the middle row = n asterisks - puts statement in main method
# loop through some logic a certain number of times for bottom - do/while loop
# a main method to call the methods that draw the individual parts
# puts some # of spaces-asterisks-spaces

def top_half(n)
  rows = (n - 1) / 2
  spaces = (n - 1) / 2
  1.upto(rows) do |row| 
    puts (" " * spaces) + ("*" * ((row * 2) -1)) + (" " * spaces)
    spaces -= 1
  end
end

def bottom_half(n)
  rows = (n - 1) / 2
  1.upto(rows) do |row|
    puts (" " * row) + ("*" * (n - 2 * row)) + (" " * row)
  end
end

def diamond(n)
  top_half(n)
  puts "*" * n
  bottom_half(n)
end

diamond(15)
