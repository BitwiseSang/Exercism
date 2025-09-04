# Hamming solution
class Hamming
  def self.compute(first_strand, second_strand)
    return 0 if first_strand == second_strand
    raise ArgumentError if first_strand.length != second_strand.length || first_strand.empty? || second_strand.empty?

    hamming_distance = 0
    first_strand.length.times do |idx|
      hamming_distance += 1 unless first_strand[idx] == second_strand[idx]
    end
    hamming_distance
  end
end
