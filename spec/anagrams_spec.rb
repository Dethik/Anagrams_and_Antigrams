require('rspec')
require('pry')
require('anagrams')

describe("Words") do
  it('Find whether two strings are anagrams of eachother.') do
    word = Words.new("Cider", "Cried")
    expect(word.anagram()).to(eq("Hey, look! 'Cider' and 'Cried' are anagrams!"))
  end
  it('check both strings for possible anagrams regardless of capitalization') do
    word = Words.new("Dusty", "Study")
    expect(word.anagram()).to(eq("Hey, look! 'Dusty' and 'Study' are anagrams!"))
  end
  it('check if either string contains a vowel, if not then it will return not a real word') do
    word = Words.new("xzb", "brg")
    expect(word.anagram()).to(eq(""))
  end
  # it('') do
  # end
end