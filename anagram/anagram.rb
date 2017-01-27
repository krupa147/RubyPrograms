class Anagram

  def initialize(input)
    @word_to_match = input
    @matched_words = []
  end

  def match(array)
    target_size = @word_to_match.size 
    target_sorted = @word_to_match.each_char.sort
    array.select { |a| anagram?(a) }
    @matched_words
  end

  def anagram?(w)
    match_downcae = w.downcase
    word_downcase = @word_to_match.downcase
    char_match = match_downcae.split("").sort
    char_word = word_downcase.split("").sort
    @matched_words.push(w) if char_match == char_word && match_downcae != word_downcase
  end

end

