# FACTS
# n <= 2 returns 1
# Recursion is basically looping
# F(n) = F(n - 1) + F(n-2)
# FUNCTIONAL MODULES
# Return 1 if n <= 2
# Loop through 3.upto(n)
# 
# 

def fibonacci(n)
  first, last = 1, 1
  3.upto(n) do |x|
    first, last = last, first + last
  end
  last
end

fibonacci(6)