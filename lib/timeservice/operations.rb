# frozen_string_literal: true

module TimeService
  # Operations class
  class Operations < Base
    def add_minutes(formatted_time, minutes)
      parse_time(formatted_time)
    end

    def parse_time(formatted_time)
      match = formatted_time.match(/^(\d{1,2}):(\d{2})\s(AM|PM)$/)

      hours = match[1].to_i
      minutes = match[2].to_i
      period = match[3]

      [hours, minutes, period]
    end
  end
end
