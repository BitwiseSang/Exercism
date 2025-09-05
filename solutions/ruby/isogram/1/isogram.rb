# Isogram solution
class Isogram
  def self.isogram?(word)
    char_array = word.downcase.scan(/[a-zA-Z]/)
    char_array.uniq.length == char_array.length
  end
end
