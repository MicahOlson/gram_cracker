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

  def compare
    if !is_word?(@word_1) || !is_word?(@word_2)
      'Oops—please try again with actual words!'
    elsif @word_1.downcase.split('').sort == @word_2.downcase.split('').sort
      'These words are anagrams—they share all the same letters.'
    end
  end
end
