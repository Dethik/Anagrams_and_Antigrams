class Words
  def initialize(string_1, string_2)
    @string_1 = string_1
    @string_2 = string_2
    @array_1 = string_1.downcase.split('').sort.delete_if{|x| x == " "}
    @array_2 = string_2.downcase.split('').sort.delete_if{|x| x == " "}
    @string_1.delete! "."
    @string_1.delete! ","
    @string_1.delete! "!"
    @string_1.delete! "?"
    @string_2.delete! "."
    @string_2.delete! ","
    @string_2.delete! "!"
    @string_2.delete! "?"
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
        "*le gasp!* '#{@string_1}' and '#{@string_2}' are antigrams!"
      else
        if @array_1 == @array_2
          "Hey, look! '#{@string_1}' and '#{@string_2}' are anagrams!"
        else
          "Darn, '#{@string_1}' and '#{@string_2}' are not anagrams!"
        end
      end
    else
      "Please enter a real word!"
    end
  end
  def palindrome
    palin_count = 0
    words = @string_1.split(' ')
    words.each do |word|
      chars = word.split('')
      palin_array = []
      x = chars.length
      while x > 0
        palin_array.push(chars[x-1])
        x -= 1
      end
      if palin_array.join == word
        "In the first String, #{word} is a palindrome"
        palin_count += 1
        true
      else
        false
      end
    end
    words2 = @string_2.split(' ')
    words2.each do |word|
      chars = word.split('')
      palin_array = []
      x = chars.length
      while x > 0
        palin_array.push(chars[x-1])
        x -= 1
      end
      if palin_array.join == word
        "In the second String, #{word} is a palindrome"
        palin_count += 1
        true
      else
        false
      end
    end
    "You have #{palin_count} Palindromes within your strings! Fascinating!"
  end
end