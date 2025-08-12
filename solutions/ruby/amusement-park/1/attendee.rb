class Attendee
  attr_accessor :pass_id
  attr_reader :height

  def initialize(height)
    @height = height
    @pass_id = nil
  end

  def issue_pass!(pass_id)
    self.pass_id = pass_id
  end

  def revoke_pass!
    self.pass_id = nil
  end
end
