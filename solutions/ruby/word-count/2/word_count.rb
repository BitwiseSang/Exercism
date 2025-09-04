# Word count class implementation
class Phrase
  def initialize(word)
    @word = word
  end

  def word_count
    @word
      .delete("!:\n&^@$")
      .scan(/\b[\w']+\b/)
      .each_with_object(Hash.new(0)) do |word, counts|
        counts[word.downcase] += 1
      end
  end
end
