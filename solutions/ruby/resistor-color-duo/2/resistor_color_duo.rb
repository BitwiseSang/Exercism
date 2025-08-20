class ResistorColorDuo
  COLOR_VALUES = {:black => 0,:brown => 1, :red => 2, :orange => 3, :yellow => 4, :green => 5, :blue => 6, :violet => 7, :grey => 8, :white => 9}

  def self.value(color_bands)
    final = ""
    color_bands.take(2).map {|color| final += COLOR_VALUES[color.to_sym].to_s}
    final.to_i
  end
end