require('rspec')
require('pry')
require('anagrams')

describe("Words") do
  it('Find whether two words are anagrams of eachother.') do
    words = Words.new("", "")
    expect(words.anagram()).to(eq(""))
  end
  # it('') do
  # end
  # it('') do
  # end
  # it('') do
  # end
end