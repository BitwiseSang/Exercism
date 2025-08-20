class ResistorColorDuo
  COLOR_VALUES = {:black => 0,:brown => 1, :red => 2, :orange => 3, :yellow => 4, :green => 5, :blue => 6, :violet => 7, :grey => 8, :white => 9}

  def self.value(color_bands)
    final = ""
    2.times do |num|
      final += COLOR_VALUES[color_bands[num].to_sym].to_s
    end
    final.to_i
  end
end