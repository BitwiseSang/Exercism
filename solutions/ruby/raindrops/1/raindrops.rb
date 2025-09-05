# Raindrops solution
class Raindrops
  MAPPER = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }.freeze

  def self.convert(num)
    outcome = MAPPER.keys.reduce('') do |solution, key|
      solution << MAPPER[key] if num.modulo(key).zero?
      solution
    end
    outcome.empty? ? num.to_s : outcome
  end
end
