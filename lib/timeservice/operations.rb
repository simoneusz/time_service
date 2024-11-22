# frozen_string_literal: true

module TimeService
  # Operations class able to add minutes to a time with /[H]H:MM {AM|PM}/ format
  # doesent use Time library from ruby kernel
  class Operations < Base
    def add_minutes(formatted_time, minutes)
      time_array = parse_time(formatted_time)
      total_minutes = time_array[0] * 60 + time_array[1] + minutes
      format_time(total_minutes)
    end

    def parse_time(formatted_time)
      match = formatted_time.match(/^(\d{1,2}):(\d{2})\s(AM|PM)$/)

      hours = match[1].to_i
      minutes = match[2].to_i
      period = match[3]

      [hours, minutes, period]
    end

    def format_time(total_minute)
      hours = total_minute / 60
      period = hours >= 12 ? 'PM' : 'AM'
      hours %= 12
      hours = 12 if hours.zero?

      minutes = total_minute % 60
      minutes = '00' if minutes.zero?

      "#{hours}: #{minutes} #{period}"
    end
  end
end
