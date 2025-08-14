class BirdCount
  attr_accessor :birds_per_day

  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    self.birds_per_day[-2]
  end

  def total
    self.birds_per_day.sum
  end

  def busy_days
    self.birds_per_day.count {|birds| birds >= 5}
  end

  def day_without_birds?
    self.birds_per_day.any? {|birds| birds == 0}
  end
end
