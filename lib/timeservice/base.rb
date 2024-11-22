# frozen_string_literal: true

module TimeService
  # base class
  class Base
    def initialize
      yield self if block_given?
    end
  end
end
