class Words
  def initialize(word_1, word_2)
    @word_1 = word_1
    @word_2 = word_2
  end

  def compare
    if @word_1.downcase.split('').sort == @word_2.downcase.split('').sort
      'These words are anagrams—they share all the same letters.'
    end
  end
end