module Patryn
  # Responsible for building logger instance
  class LoggerFactory
    def initialize(opts)
      @level = opts[:level] || ::Logger::ERROR
      @datetime_format = opts[:datetime_format] || '%Y-%m-%d %H:%M:%S'
      @formatter = opts[:formatter] || default_formatter
    end

    def build
      Logger.new($stdout).tap do |logger|
        logger.level = @level
        logger.datetime_format = @datetime_format
        logger.formatter = @formatter
      end
    end

    private

    def default_formatter
      proc do |severity, datetime, _progname, msg|
        "[#{severity}][#{datetime}]: #{msg}\n"
      end
    end
  end
end
