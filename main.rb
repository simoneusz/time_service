# frozen_string_literal: true

require_relative('lib/time_servise')

operations = TimeService::Operations.new

initial_time = '9:13 AM'
minutes_to_add = 167

puts "Time: #{initial_time} + #{minutes_to_add} minutes = "
p operations.add_minutes(initial_time, minutes_to_add)

puts 'Raise an error with wrong format'
p operations.add_minutes('e13', minutes_to_add)
