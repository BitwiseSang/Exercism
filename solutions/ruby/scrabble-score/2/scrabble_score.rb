# Scrabble score solution
class Scrabble
  POINTS = {
    1 => %w[A E I O U L N R S T],
    2 => %w[D G],
    3 => %w[B C M P],
    4 => %w[F H V W Y],
    5 => %w[K],
    8 => %w[J X],
    10 => %w[Q Z]
  }.freeze

  attr_reader :score

  def initialize(word)
    @word = word.upcase
    @score = compute_score
  end

  private

  def compute_score
    @word.each_char.reduce(0) do |sum, char|
      point = POINTS.keys.select { |key| POINTS[key].include? char }[0]
      sum + point
    end
  end
end
