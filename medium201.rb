=begin

Problem Description: Write a program that reads the content of a text file
and then prints the longest sentence in the file based on number of words.

Inputs: a text file

Output: Print a string representing the longest sentence in the file.
Also print the number of words of the longest sentence

Rules: Sentences may end with periods, exclamation points, or question marks.

Problem Breakdown:
- Open the file in Ruby
- Split the text by ., !, ? so that I can count the words in each sentence
- If the sentence has more words than the last, make the current one the longest
- AFter looking at all sentences, return the longest as a tring, print it and the word count.

Algorithm:
- open the text file in Ruby with read privileges and save as a variable
- split the text by ., !, ? using RegEx
- Iterate through the sentences array and split each into words.
-   This will result in a nested array
- Initialize a variable to reference the sub-array with the most elements and assign empty string.
- Initialize a variable to hold the count of the longest
- Call count on each words array to count the words/elements in each
- Do a comparison between the current longest and the new.  If new is longer, reassign to new string.
- Return the values of the longest string and the count

=end


text = File.read('lots_of_text.txt')
sentence_array = text.split(/\.|\?|!/)
word_array = sentence_array.map do |sentence|
  sentence.split
end
longest_sentence = ''
word_count = 0
word_array.each do |words|
  if words.count > word_count
    longest_sentence = words.join(' ')
    word_count = words.count
  end
end

puts "#{longest_sentence}"
puts "Containing #{word_count} words."
