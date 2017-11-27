=begin

Problem Description: write a method that sorts an array using the bubble sort algorithm

Inputs: array

Output: array sorted in ascending order

Rules: Iterate through the array and compare each character to the next character
if it's greater than, exchange characters
Continue to loop until there are no exchanges

Problem Breakdown:
- Since I don't know how many iterations of the loop it will take, use a do loop
- Need to keep track of the # of swaps, reset to zero on each iteration of the outer loop
- break when the # of swaps == 0
- loop within a loop (an outer loop and an inner loop)
- inner loop can use each with index
- compare characters at index to the next one if > swap index spots
- want to mutate the array so make sure it's not a new array

Algorithm:
- 

=end

def bubble_sort!(array)
  loop do
    swaps = 0
    index = 0
    while index < array.size - 1
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swaps += 1
      end
      index += 1
    end
    break if swaps == 0
  end
end

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array