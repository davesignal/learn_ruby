class Timer
  def seconds=(the_seconds = 0)
    @seconds = the_seconds
  end

  def seconds
    @seconds = 0
  end

  def time_string
    hours = (@seconds / 3600)
    minutes = (@seconds - (hours*3600))/60
    secs = (@seconds - ((hours*3600)+(minutes*60)))

    string_hours = hours.to_s
    string_minutes = minutes.to_s
    string_seconds = secs.to_s

    if (string_hours.length < 2)
      string_hours = "0#{string_hours}"
    end
    if (string_minutes.length < 2)
      string_minutes = "0#{string_minutes}"
    end
    if (string_seconds.length < 2)
      string_seconds = "0#{string_seconds}"
    end

    @time_string = "#{string_hours}:#{string_minutes}:#{string_seconds}"
  end
end
