=begin

Problem Description: Write a method that determines if the argument can be spelled from the blocks.

Inputs: string argument

Output: boolean

Rules: Two letters per block; can use just one letter from the same block

Problem Breakdown:
- 13 blocks; each block has 2 values
- When a letter is used, it's partner can't be used
- Each block gets "used up" when there's a match and is no longer available
- Keep track of when a block is used
- See if each letter of the word passed in passes the test of being available

Algorithm:
{:block1 => { :1 => 'B', :2 => 'O', :available => 'yes' }
- call chars on the string 
- iterate through the string
  - check each char against each block, if available, change available to 'no', and keep going
  - if available ==  no, then break and return false
  - if it makes it all the way through the string, return true
=end


def block_word?(string)
  blocks = {:block1 => { :a => 'B', :b => 'O', :available => 'yes' }, :block2 => { :a => 'X', :b => 'K', :available => 'yes' },
    block3: { :a => 'D', :b => 'Q', :available => 'yes' }, block4: { :a => 'C', :b => 'P', :available => 'yes' },
    block5: { :a => 'N', :b => 'A', :available => 'yes' }, block6: { :a => 'G', :b => 'T', :available => 'yes' },
    block7: { :a => 'R', :b => 'E', :available => 'yes' }, block8: { :a => 'F', :b => 'S', :available => 'yes' },
    block9: { :a => 'J', :b => 'W', :available => 'yes' }, block10: { :a => 'H', :b => 'U', :available => 'yes' },
    block11: { :a => 'V', :b => 'I', :available => 'yes' }, block12: { :a => 'L', :b => 'Y', :available => 'yes' },
    block13: { :a => 'Z', :b => 'M', :available => 'yes' } }

  string.upcase.chars.all? do |char|
    blocks.each do |block_num, letters|
      if (letters[:a] == char || letters[:b] == char) && letters[:available] == 'no'
       return false
      elsif (letters[:a] == char || letters[:b] == char) && letters[:available] == 'yes'
        letters[:available] = 'no'
      end
    end
  end
end

p block_word?('BATCH')


# Launch School solution

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word?('BUTCH')