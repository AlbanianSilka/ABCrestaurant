class DaytimeService
  def initialize(booking)
    @booking = booking
  end
  # in this part we declare hours and minutes, if you want to change the minimum start of the working day - write another number

  def create_workday(min_hours, max_hours)
    graph_time = []

    until min_hours > max_hours
      graph_time.push("#{min_hours}")
      min_hours += 1
    end

    graph_all = []
    minute = 0

    graph_time.each do |el|
      while minute < 60
        if minute == 0
          graph_all.push("#{el}" ":" "#{minute}0")
          minute += 15
        else
          graph_all.push("#{el}" ":" "#{minute}")
          minute += 15
        end
      end
      if minute == 60
        minute = 0
      end
    end

    graph_all
  end
end
