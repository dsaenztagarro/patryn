require 'patryn/logger_factory'
require 'logger'

module Patryn
  # Helpers for accesing logger
  module LoggerHelper

    private

    def logger
      @logger ||= LoggerFactory.new(log_attributes).build
    end

    def log_attributes
      klass = self.class
      { level: ::Logger.const_get(klass.log_level.upcase),
        datetime_format: klass.log_datetime_format,
        formatter: klass.log_formatter }
    end
  end
end
