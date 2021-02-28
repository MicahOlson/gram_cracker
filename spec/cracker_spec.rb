require('rspec')
require('pry')
require('cracker')

describe('Cracker#crack') do
  it('checks if two words are anagrams') do
    words = Cracker.new('bluest', 'subtle')
    expect(words.crack).to(eq('These are anagrams — they share all the same letters.'))
  end

  it('checks if two words are anagrams regardless of case') do
    words = Cracker.new('Bluest', 'Subtle')
    expect(words.crack).to(eq('These are anagrams — they share all the same letters.'))
  end

  it('checks if inputs are actually words (i.e., have vowels)') do
    words = Cracker.new('Blttst', 'Subtle')
    expect(words.crack).to(eq('Oops — please include real words only!'))
  end

  it('checks if two words are antigrams') do
    words = Cracker.new('Friends', 'Boat')
    expect(words.crack).to(eq('These are antigrams — they share no common letters.'))
  end

  it('checks if two phrases of multiple words are anagrams or antigrams, ignoring spaces and punctuation.') do
    phrases = Cracker.new('I think therefore I am.', "I fear to think I'm here!")
    expect(phrases.crack).to(eq('These are anagrams — they share all the same letters.'))
  end

  it('checks if individual words in phrases are actually words (i.e., have vowels') do
    phrases = Cracker.new('asteroid threats', 'disaster to ttrth')
    expect(phrases.crack).to(eq('Oops — please include real words only!'))
  end

  it('returns a message if words or phrases were not determined to be anagrams or antigrams') do
    phrases = Cracker.new('I think therefore I am.', 'disaster to earth')
    expect(phrases.crack).to(eq('These are neither anagrams nor antigrams.'))
  end
end
