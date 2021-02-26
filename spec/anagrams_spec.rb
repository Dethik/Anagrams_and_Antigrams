require('rspec')
require('pry')
require('anagrams')

describe("Words") do
  it('Find whether two words are anagrams of eachother.') do
    word = Words.new("Cider", "Cried")
    expect(word.anagram()).to(eq("Hey, look! 'Cider' and 'Cried' are anagrams!"))
  end
  it('check both words for possible anagrams regardless of capitalization') do
    word = Words.new("Dusty", "Study")
    expect(word.anagram()).to(eq("Hey, look! 'Dusty' and 'Study' are anagrams!"))
  end
  # it('') do
  # end
  # it('') do
  # end
end