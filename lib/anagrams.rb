class Words
  def initialize(word_1, word_2)
    @word_1 = word_1
    @word_2 = word_2
  end

  def compare
    vowels = %w(a e i o u)
    word_1_is_word = false
    word_2_is_word = false
    @word_1.each_char do |char|
      if vowels.include?(char)
        word_1_is_word = true
      end
    end
    @word_2.each_char do |char|
      if vowels.include?(char)
        word_2_is_word = true
      end
    end
    if !word_1_is_word || !word_1_is_word
      'Oops—please try again with actual words!'
    elsif @word_1.downcase.split('').sort == @word_2.downcase.split('').sort
      'These words are anagrams—they share all the same letters.'
    end
  end
end
