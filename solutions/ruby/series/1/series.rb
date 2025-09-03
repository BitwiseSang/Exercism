# Series solution
class Series
  def initialize(word)
    raise ArgumentError if word.empty?

    @word = word
  end

  def valid_slice_length?(length)
    length <= @word.length && !length.zero? && length.positive?
  end

  def slices(length)
    raise ArgumentError unless valid_slice_length?(length)

    upper_bound = @word.length - length
    (0..upper_bound).map do |idx|
      @word.slice(idx, length)
    end
  end
end
