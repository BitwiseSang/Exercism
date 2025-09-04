# Word count class implementation
class Phrase
  def initialize(word)
    @word = word
  end

  def word_count
    counts = {}
    @word
      .delete("!:\n&^@$")
      .scan(/\b[\w']+\b/)
      .reduce(Hash.new(0)) do |counts, word|
        counts[word.downcase] += 1
        counts
      end
  end
end
