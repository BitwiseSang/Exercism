# Word count class implementation
class Phrase
  def initialize(word)
    @word = word
  end

  def word_count
    @word.downcase.scan(/\b[\w']+\b/).tally
  end
end
