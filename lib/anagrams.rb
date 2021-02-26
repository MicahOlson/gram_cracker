class ComparisonSet
  def initialize(str1, str2)
    @str1 = str1
    @str2 = str2
  end

  def is_word?(str)
    vowels = %w(a e i o u)
    words = str.downcase.split(' ')
    verify_words = []
    words.each do |word|
      is_word = false
      word.each_char do |char|
        if vowels.include?(char)
          is_word = true
        end
      end
      verify_words.push(is_word)
    end
    !verify_words.include?(false)
  end

  def strip_str(str)
    str.gsub(/[^a-z]/i, '')
  end

  def is_anagram?
    strip_str(@str1).downcase.split('').sort == 
    strip_str(@str2).downcase.split('').sort
  end

  def is_antigram?
    is_antigram = true
    strip_str(@str1).each_char do |char|
      if strip_str(@str2).include?(char)
        is_antigram = false
      end
    end
    is_antigram
  end

  def compare
    if !is_word?(@str1) || !is_word?(@str2)
      'Oops — please include real words only!'
    elsif is_anagram?
      'These are anagrams — they share all the same letters.'
    elsif is_antigram?
      'These are antigrams — they share no common letters.'
    end
  end
end
