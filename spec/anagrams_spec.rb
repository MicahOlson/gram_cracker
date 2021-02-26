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

  it('checks if two words are antigrams') do
    words = Words.new('Friends', 'Boat')
    expect(words.compare).to(eq('These words are antigrams—they share no common letters.'))
  end

  it('checks if two phrases of multiple words are anagrams, ignoring spaces and punctuation.') do
    words = Words.new('I think therefore I am.', "I fear to think I'm here!")
    expect(words.compare).to(eq('These words are anagrams—they share all the same letters.'))
  end
end
