module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  attr_reader :IDENTIFIER

  def self.get_identifier(city)
    city.slice(0,4).upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    if ship_identifier.to_s.include?("OIL") || ship_identifier.to_s.include?("GAS")
      :A
    else
      :B
    end
  end
end
