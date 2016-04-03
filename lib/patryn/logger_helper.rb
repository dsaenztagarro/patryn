require 'patryn/logger_factory'

module Patryn
  # Helpers for accesing logger
  module LoggerHelper
    private

    def logger
      @logger ||= LoggerFactory.new(self.class.log_options).build
    end
  end
end
