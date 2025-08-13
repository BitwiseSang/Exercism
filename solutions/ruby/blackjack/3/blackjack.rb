module Blackjack

  CARD_NUMBERS = {:ace => 11, :two => 2, :three => 3, :four => 4, :five => 5, :six => 6, :seven => 7, :eight => 8, :nine => 9, :ten => 10, :jack => 10, :queen => 10, :king => 10}
  RANGES = {:low => (4..11), :mid => (12..16), :high => (17..20), :blackjack => [21]}
  DEALER_AVOID = [10, 11]

  def self.parse_card(card)
    CARD_NUMBERS[card.to_sym] ? CARD_NUMBERS[card.to_sym] : 0;
  end

  def self.card_range(card1, card2)
    score = self.parse_card(card1) + self.parse_card(card2)
    RANGES.each {|key, value| return key.to_s if value.include?(score)}
  end

  def self.first_turn(card1, card2, dealer_card)
    score = self.parse_card(card1) + self.parse_card(card2)
    dealer_score = self.parse_card(dealer_card)
    case score
    when 2..11
      "H"
    when 12..16
       dealer_score >= 7 ? "H": "S"
    when 17..20
      "S"
    when 21
      DEALER_AVOID.include?(dealer_score) ? "S" : "W"
    when 22
      "P"
    end
  end
end
