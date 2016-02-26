# Reverse Words


# I worked on this challenge [with: Ben Giamarino, Jack Hamilton].
# This challenge took me [#] hours.

# Pseudocode

# INPUT: sentence
# OUTPUT: sentence with each word reversed

# Define a private method called reverse_word
# Take the last character of the word and append it to a new string
# Repeat for each letter of the word working from right-to-left characters.
# Return the word

# Define a public method called reverse_sentence, take each word of the
# sentence and send it to the
# reverse_word function. The the returned reversed-word and append it to
# a new-sentence string, add a space, and continue loop.
# End when no more words to process.
# Return new-sentence.
#
# The driver code defines a sentence.
# It calls public method "reverse_sentence" with "sentence" as the argument
# and prints the reversed sentence.
# Initial Solution

def reverse_word(word)
  word.reverse
end

def reverse_words(sentence)
  words = sentence.split(" ")
  new_sentence = ""
  for word in words do
    new_sentence << reverse_word(word) + " " 
  end
  
  return new_sentence.strip
end

my_words = "This is a test"

p reverse_words(my_words)


# Refactored Solution

def reverse_words(sentence)
  new_sentence = sentence.split(" ")
  new_sentence.each do |word|
    word.reverse!
  end
  
  new_sentence.join(" ")
end

my_words = "This is a test"

p reverse_words(my_words)



# Reflection

# What concepts did you review in this challenge?

# => Mainly iterating over arrays and changing from a string to an array and back again.

# What is still confusing to you about Ruby?

# => There isn't too much confusing about ruby. I'm just interested to see how this 
# => all fits in with the other things we are learning. 

# What are you going to study to get more prepared for Phase 1?

# => Enumberables in ruby. 