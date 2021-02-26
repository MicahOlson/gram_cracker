require('rspec')
require('pry')
require('anagrams')

describe('ComparisonSet#compare') do
  it('checks if two words are anagrams') do
    words = ComparisonSet.new('bluest', 'subtle')
    expect(words.compare).to(eq('These are anagrams — they share all the same letters.'))
  end

  it('checks if two words are anagrams regardless of case') do
    words = ComparisonSet.new('Bluest', 'Subtle')
    expect(words.compare).to(eq('These are anagrams — they share all the same letters.'))
  end

  it('checks if inputs are actually words') do
    words = ComparisonSet.new('Blttst', 'Stbtlt')
    expect(words.compare).to(eq('Oops — please include real words only!'))
  end

  it('checks if two words are antigrams') do
    words = ComparisonSet.new('Friends', 'Boat')
    expect(words.compare).to(eq('These are antigrams — they share no common letters.'))
  end

  it('checks if two phrases of multiple words are anagrams or antigrams, ignoring spaces and punctuation.') do
    phrases = ComparisonSet.new('I think therefore I am.', "I fear to think I'm here!")
    expect(phrases.compare).to(eq('These are anagrams — they share all the same letters.'))
  end
end
