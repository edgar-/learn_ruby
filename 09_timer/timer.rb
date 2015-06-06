class Timer
  attr_reader :seconds

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds=(seconds)
    @seconds = seconds%60
    @minutes = (seconds/60)%60
    @hours = seconds/3600
  end

  def time_string
    "#{"%02d:%02d:%02d" % [@hours, @minutes, @seconds]}"  
  end
end