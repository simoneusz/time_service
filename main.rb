require_relative('lib/time_servise')

operations = TimeService::Operations.new

p operations.add_minutes('9:13 AM', 10)
