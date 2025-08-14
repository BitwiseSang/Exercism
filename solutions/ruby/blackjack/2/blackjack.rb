module Blackjack

  CARD_NUMBERS = {:ace => 11, :two => 2, :three => 3, :four => 4, :five => 5, :six => 6, :seven => 7, :eight => 8, :nine => 9, :ten => 10, :jack => 10, :queen => 10, :king => 10}

  def self.parse_card(card)
    CARD_NUMBERS[card.to_sym] ? CARD_NUMBERS[card.to_sym] : 0;
  end

  def self.card_range(card1, card2)
    score = self.parse_card(card1) + self.parse_card(card2)
    case score
    when 4..11
      "low"
    when 12..16
      "mid"
    when 17..20
      "high"
    when 21
      "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    score = self.parse_card(card1) + self.parse_card(card2)
    case score
    when 2..11
      return "H"
    when 12..16
      if self.parse_card(dealer_card) >= 7
        return "H"
      else
        return "S"
      end
    when 17..20
      return "S"
    when 21
      if dealer_card != "ace" && dealer_card != "face" && dealer_card != "ten"
        return "W"
      else
        return "S"
      end
    when 22
      return "P"
    end
  end
end
