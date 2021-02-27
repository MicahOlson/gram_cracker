class GramCracker
  def initialize(str1, str2)
    @str1 = str1
    @str2 = str2
  end

  def is_word?(str)
    vowels = %w(a e i o u y)
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

  def standardize_str(str)
    str.gsub(/[^a-z]/i, '').downcase.split('').sort
  end

  def is_anagram?
    standardize_str(@str1) == standardize_str(@str2)
  end

  def is_antigram?
    is_antigram = true
    standardize_str(@str1).each do |char|
      if standardize_str(@str2).include?(char)
        is_antigram = false
      end
    end
    is_antigram
  end

  def crack
    if !is_word?(@str1) || !is_word?(@str2)
      'Oops — please include real words only!'
    elsif is_anagram?
      'These are anagrams — they share all the same letters.'
    elsif is_antigram?
      'These are antigrams — they share no common letters.'
    else
      'These are neither anagrams nor antigrams.'
    end
  end
end
