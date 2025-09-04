# Eliud solution
class EliudsEggs
  def self.egg_count(decimal_number)
    decimal_number.to_s(2).count("1")
  end
end
