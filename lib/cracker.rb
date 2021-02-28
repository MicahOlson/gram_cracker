class Cracker
  def initialize(str1, str2)
    @str1 = str1
    @str2 = str2
  end

  def anagrams?
    conform_str(@str1) == conform_str(@str2)
  end

  def antigrams?
    conform_str(@str1).none? { |char| conform_str(@str2).include?(char) }
  end

  def crack
    if !word?(@str1) || !word?(@str2)
      'Oops — please include real words only!'
    elsif anagrams?
      'These are anagrams — they share all the same letters.'
    elsif antigrams?
      'These are antigrams — they share no common letters.'
    else
      'These are neither anagrams nor antigrams.'
    end
  end

  private
    def word?(str)
      vowels = %w(a e i o u y)
      words = str.downcase.split(' ')
      verify = []
      words.each do |word|
        vowels.any? { |vowel| word.include?(vowel) } ? verify.push(true) : verify.push(false)
      end
      verify.all?
    end

    def conform_str(str)
      str.gsub(/[^a-z]/i, '').downcase.split('').sort
    end
end
