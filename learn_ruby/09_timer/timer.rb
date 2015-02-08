class Timer
  attr_accessor :seconds, :min, :hr, :time_string

  def seconds
    @seconds = 0
    @min = 0
    @hr = 0
  end

  def time_string(seconds=@seconds,min=@min,hr=@hr)
    seconds_string = @seconds.to_s
    min_string = @min.to_s
    hr_string = @hr.to_s
    if seconds_string.length < 2
      seconds_string << "0"
      @time_string = "00:00:#{seconds_string}"
    elsif @seconds < 60
      @time_string = "00:00:#{seconds_string}"
    elsif @seconds > 60 && @seconds < 3600
      @seconds = @seconds - 60
      seconds_string = "0" + @seconds.to_s
      min_string = "01"
      @time_string = "00:#{min_string}:#{seconds_string}"
    elsif @seconds > 3600
      @seconds = @seconds - 3600
      min = @seconds/60.0
      min_1 = min.floor
      seconds_as_decimal = min - min.floor
      seconds = seconds_as_decimal * 60.0
      seconds = seconds.to_i
      min_string= "0" + min_1.to_s
      seconds_string = seconds.to_s
      hr_string = "01"
      @time_string = "#{hr_string}:#{min_string}:#{seconds_string}"
    end
  end

end
