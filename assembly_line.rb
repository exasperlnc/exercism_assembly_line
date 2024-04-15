class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    @speed * 221
  end

  def working_items_per_minute
    return self.production_rate_per_hour if @speed < 5
    if speed < 9
      self.production_rate_per_hour * 0.9
    elsif @speed == 9
      self.production_rate_per_hour * 0.8
    else
      self.production_rate_per_hour * 0.77
    end
  end
end
