# Isogram solution
class Isogram
  def self.isogram?(word)
    char_array = word.downcase.scan(/[a-z]/)
    char_array.uniq == char_array
  end
end
