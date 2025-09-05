# Scrabble score solution
class Scrabble
  POINTS = {
    /[AEIOULNRST]/ => 1,
    /[DG]/ => 2,
    /[BCMP]/ => 3,
    /[FHVWY]/ => 4,
    /K/ => 5,
    /[JX]/ => 8,
    /[QZ]/ => 10
  }.freeze

  attr_reader :score

  def initialize(word)
    @word = word.upcase
    @score = compute_score
  end

  private

  def compute_score
    POINTS.reduce(0) do |point, (letters, value)|
      point + (@word.scan(letters).count * value)
    end
  end
end
