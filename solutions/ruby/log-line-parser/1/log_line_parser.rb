class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':').at(1).strip()
  end

  def log_level
    @line.split(":").at(0).delete("[]").downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
