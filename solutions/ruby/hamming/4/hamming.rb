# Hamming solution
class Hamming
  def self.compute(first_strand, second_strand)
    return 0 if first_strand == second_strand
    raise ArgumentError if first_strand.length != second_strand.length || first_strand.empty? || second_strand.empty?

    first_strand.chars.zip(second_strand.chars).count { |first_char, second_char| first_char != second_char }
  end
end
