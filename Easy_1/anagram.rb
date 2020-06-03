# compare the number of each char in a word to the num of chars in the base word and select it

class Anagram
  def initialize(word)
    @word = word
  end

  def match(arr)
    arr.select do |str|
      (str.downcase.chars.sort == @word.downcase.chars.sort) && (str.downcase != @word.downcase)
    end
  end
end