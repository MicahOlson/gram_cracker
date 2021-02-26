class Words
  def initialize(word_1, word_2)
    @word_1 = word_1
    @word_2 = word_2
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
    @word_1.downcase.split('').sort == @word_2.downcase.split('').sort
  end

  def is_antigram?
    is_antigram = true
    @word_1.each_char do |char|
      if @word_2.include?(char)
        is_antigram = false
      end
    is_antigram
    end
  end

  def compare
    if !is_word?(@word_1) || !is_word?(@word_2)
      'Oops—please try again with actual words!'
    elsif is_anagram?
      'These words are anagrams—they share all the same letters.'
    elsif is_antigram?
      'These words are antigrams—they share no common letters.'
    end
  end
end
