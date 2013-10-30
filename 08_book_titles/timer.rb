class Timer
 
  HOUR = 3600
  MINUTE = 60
  SECOND = 1

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
    
    hour_10 = input/HOUR
    minute_10 = (input % HOUR)/MINUTE
    second_10 = (input % MINUTE)/SECOND

      if hour_10 == 0 
        hours = "00"
      elsif hour_10 < 10
        hours = "0#{hour_10}"
      else
        hours = "#{hour_10}"
      end

      if minute_10 == 0
        minutes = "00"
      elsif minute_10 < 10
        minutes = "0#{minute_10}"
      else
        minutes = "#{minute_10}"
      end

      if second_10 == 0
        seconds = "00"
      elsif second_10 < 10
        seconds = "0#{second_10}"
      else
        seconds = "#{second_10}"
      end

      "#{hours}:#{minutes}:#{seconds}"
  
end
end


# def padded(input)
  #   if input == 0
  #     "00:00:00"
  #   elsif input.to_i < 10
  #     "00:00:0#{input}"
  #   elsif input.to_i >= 10 && input.to_i < 60
  #     "00:00:#{input}"
  #   elsif input.to_i >= 60 && input.to_i < 3600
  #     seconds = input % 60
  #     minutes = input / 60
  #     if seconds < 10 && minutes < 10
  #       "00:0#{minutes}:0#{seconds}"
  #     elsif seconds < 10 && minutes >= 10
  #       "00:#{minutes}:0#{seconds}"
  #     elsif seconds >= 10 && minute >= 10
  #       "00:#{minutes}:#{seconds}"
  #     end
  #   elsif input.to_i >= 3600
  #     hours = input / 3600
  #     minutes = (input - 3600) / 60
  #     seconds = (input - 3600) % 60
  #     if seconds < 10 && minutes < 10
  #       "0#{hours}:0#{minutes}:0#{seconds}"
  #     elsif seconds < 10 && minutes >= 10
  #       "0#{hours}:#{minutes}:0#{seconds}"
  #     elsif seconds >= 10 && minutes >= 10
  #       "0#{hours}:#{minutes}:#{seconds}"
  #     elsif seconds >= 10 && minutes < 10
  #       "0#{hours}:0#{minutes}:#{seconds}"
  #     end

  #   end
  # end
