# Dnd class implementation
class DndCharacter
  BASE_HITPOINTS = 10
  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints

  def self.modifier(constitution)
    ((constitution - 10) / 2).floor
  end

  def initialize
    @strength = dice_roll
    @dexterity = dice_roll
    @constitution = dice_roll
    @intelligence = dice_roll
    @wisdom = dice_roll
    @charisma = dice_roll

    @hitpoints = BASE_HITPOINTS + self.class.modifier(@constitution)
  end

  def dice_roll
    dice_rolls = []
    4.times do
      dice_rolls << rng
    end
    dice_rolls.max(3).sum
  end

  def rng
    Random.rand(1..6)
  end
end
