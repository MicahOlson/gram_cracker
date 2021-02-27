class GramCracker
  def initialize(str1, str2)
    @str1 = str1
    @str2 = str2
  end

  def word?(str)
    vowels = %w(a e i o u y)
    words = str.downcase.split(' ')
    verify = []
    words.each do |word|
      vowels.any? { |vowel| word.include?(vowel) } ? verify.push(true) : verify.push(false)
    end
    verify.all?
  end

  def standardize_str(str)
    str.gsub(/[^a-z]/i, '').downcase.split('').sort
  end

  def anagram?
    standardize_str(@str1) == standardize_str(@str2)
  end

  def antigram?
    standardize_str(@str1).none? { |char| standardize_str(@str2).include?(char) }
  end

  def crack
    if !word?(@str1) || !word?(@str2)
      'Oops — please include real words only!'
    elsif anagram?
      'These are anagrams — they share all the same letters.'
    elsif antigram?
      'These are antigrams — they share no common letters.'
    else
      'These are neither anagrams nor antigrams.'
    end
  end
end
