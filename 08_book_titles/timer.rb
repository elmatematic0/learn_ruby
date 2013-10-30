class Timer

  # attr_accessor
  def seconds
    0
  end
  
  def timer=
  end

  def seconds=(secs)
    @secs = secs
  end

  def time_string
    padded(@secs)
  end

  def padded(input)
    if input == 0
      "00:00:00"
    elsif input.to_i < 10
      "00:00:0#{input}"
    elsif input.to_i >= 10 && input.to_i < 60
      "00:00:#{input}"
    elsif input.to_i >= 60 && input.to_i < 3600
      seconds = input % 60
      minutes = input / 60
      if seconds < 10 && minutes < 10
        "00:0#{minutes}:0#{seconds}"
      elsif seconds < 10 && minutes >= 10
        "00:#{minutes}:0#{seconds}"
      elsif seconds >= 10 && minute >= 10
        "00:#{minutes}:#{seconds}"
      end
    elsif input.to_i >= 3600
      hours = input / 3600
      minutes = (input - 3600) / 60
      seconds = (input - 3600) % 60
      if seconds < 10 && minutes < 10
        "0#{hours}:0#{minutes}:0#{seconds}"
      elsif seconds < 10 && minutes >= 10
        "0#{hours}:#{minutes}:0#{seconds}"
      elsif seconds >= 10 && minutes >= 10
        "0#{hours}:#{minutes}:#{seconds}"
      elsif seconds >= 10 && minutes < 10
        "0#{hours}:0#{minutes}:#{seconds}"
      end

    end
  end
end
