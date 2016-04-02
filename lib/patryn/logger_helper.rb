require 'patryn/logger_factory'

module Patryn
  # Helpers for accesing logger
  module LoggerHelper

    private

    def logger
      @logger ||= LoggerFactory.new(log_attributes).build
    end

    def log_attributes
      klass = self.class
      { level: klass.log_level,
        datetime_format: klass.log_datetime_format,
        formatter: klass.log_formatter }
    end
  end
end
