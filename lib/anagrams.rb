# check two words against eachother
# account for diff cases
# check words to ensure real, return statement if no vowels
# check if no letters match for antigram and return statement
# account for sentences and remove spaces/punctuation, only look at the words.

class Words
  def initialize(string_1, string_2)
    @string_1 = string_1
    @string_2 = string_2
    @array_1 = string_1.downcase.split('').sort
    @array_2 = string_2.downcase.split('').sort
  end

  def anagram
    counter = 0
    if @array_1.any?{|x| ["a", "e", "i", "o", "u"].include?(x)}|| @array_2.any?{ |y| ["a","e","i","o","u"].include?(y)}
      @array_2.each do |i|
        if @array_1.include?(i)
          counter += 1
        end
      end
      if counter == 0
        "These strings are antigrams!"
      else
        if @array_1 == @array_2
          "Hey, look! '#{@string_1}' and '#{@string_2}' are anagrams!"
        # else
        #   "These are not anagrams!"
        end
      end
    else
      "Please enter a real word!"
    end
  end

end