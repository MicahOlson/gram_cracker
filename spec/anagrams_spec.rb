require('rspec')
require('pry')
require('anagrams')

describe('Words#compare') do
  it('checks if two words are anagrams') do
    words = Words.new('bluest', 'subtle')
    expect(words.compare).to(eq('These words are anagrams—they share all the same letters.'))
  end

  it('checks if two words are anagrams regardless of case') do
    words = Words.new('Bluest', 'Subtle')
    expect(words.compare).to(eq('These words are anagrams—they share all the same letters.'))
  end

  it('checks if inputs are actually words') do
    words = Words.new('Blttst', 'Stbtlt')
    expect(words.compare).to(eq('Oops—please try again with actual words!'))
  end
end