# Dnd class implementation
class DndCharacter
  BASE_HITPOINTS = 10
  ATTRIBUTES = %i[strength dexterity constitution intelligence wisdom charisma].freeze
  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints

  def self.modifier(constitution)
    ((constitution - 10) / 2).floor
  end

  def initialize
    ATTRIBUTES.map do |attribute|
      instance_variable_set("@#{attribute}", dice_roll)
    end
    @hitpoints = BASE_HITPOINTS + self.class.modifier(@constitution)
  end

  def dice_roll
    dice_rolls = []
    4.times do
      dice_rolls << Random.rand(1..6)
    end
    dice_rolls.max(3).sum
  end
end
