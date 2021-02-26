class ComparisonSet
  def initialize(str1, str2)
    @str1 = str1.gsub(/[^a-z]/i, '')
    @str2 = str2.gsub(/[^a-z]/i, '')
  end

  def is_word?(word)
    vowels = %w(a e i o u)
    is_word = false
    word.each_char do |char|
      if vowels.include?(char)
        is_word = true
      end
    end
    is_word
  end

  def is_anagram?
    @str1.downcase.split('').sort == @str2.downcase.split('').sort
  end

  def is_antigram?
    is_antigram = true
    @str1.each_char do |char|
      if @str2.include?(char)
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
