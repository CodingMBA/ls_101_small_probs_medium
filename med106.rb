# FACTS
# In stack and register language, the register value performs some operation to the value from the top of the stack.
# A stack can be implemented as an Array
# Operation with two values:
  # Pop the topmost item from the stack (ie. most recently pushed value from the stack)
  # Perform the operation using the popped value and the register value.
  # Store the result back in the register (which is not the stack).
# After the operation, the topmost value is popped and is no longer in the stack.
# The register value is constantly being updated.

# Write a method that implements the logic above
# include the operations listed on the Launch School problem page.
# Input is a string of words and numbers separated by spaces in uppercase and values.
  # ('5 PUSH 3 MULT PRINT') = 15
# Initialize the register to 0

# FUNCTIONAL PIECES NEEDED
# Parse the input string into its component elements for look-up/matching.
  # split does this and creates an array
  # At some point, numbers have to be turned from string to integers.  When?  How recognize as an integer?
# Walk through the elements, match to a command that does something
  # Series of commands lends itself to using #each on the Array for the walkthrough
# A giant case statement that includes
  # Each command in upper case that will be matched to elements of the string
  # Each command is matches an operation; what to do when that command is matched
  # I think that when the method is invoked each element can do it's thing until it's all done.
  
  
def minilang(commands)
  stack = []
  register = 0
  commands.split.each do |command|
    case command
    when 'PRINT'then puts register
    when 'PUSH' then stack.push(register)
    when 'POP'  then register = stack.pop
    when 'ADD'  then register += stack.pop
    when 'SUB'  then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV'  then register /= stack.pop
    when 'MOD'  then register %= stack.pop
    else             register = command.to_i
    end 
  end
end

minilang('4 PUSH PUSH 7 MOD MULT PRINT')
