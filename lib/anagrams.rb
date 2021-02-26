# check two words against eachother
# account for diff cases
# check words to ensure real, return statement if no vowels
# check if no letters match for antigram and return statement
# account for sentences and remove spaces/punctuation, only look at the words.

class Words
  def initialize(string_1, string_2)
    @string_1 = string_1
    @string_2 = string_2
    @array_1 = str1.downcase.split('').sort
    @array_2 = str1.downcase.split('').sort
  end

  def anagram
    counter = 0
    
  end