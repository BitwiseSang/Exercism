class Acronym
  def self.abbreviate(sentence)
    words = sentence.split()
    words.reduce(Array.new()) do |abbreviation, word|
      if word.include?("-") && word.length > 1
        word.split('-').map {|no_delimiter| abbreviation << no_delimiter[0].upcase}
      elsif word != "-"
        abbreviation << word[0].upcase
      end
      abbreviation
    end.join()
  end
end