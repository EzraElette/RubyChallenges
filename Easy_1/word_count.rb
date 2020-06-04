require 'pry'
class Phrase
  def initialize(words)
    @words = words.scan(/\w+s'|\w+'?\w+|\w+/)
  end

  def word_count
    @words.each_with_object(Hash.new(0)) do |word, hash|
      hash[word.downcase] += 1
    end
  end
end