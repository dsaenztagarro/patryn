require 'patryn/class_methods'
require 'patryn/environment'
require 'patryn/opt_parser'
require 'patryn/logger_helper'

module Patryn
  # Base class for scripts execution
  class Base
    extend ClassMethods
    include LoggerHelper
    include OptParser

    def initialize(env = Environment.new)
      @env = env
    end

    def run
      before_shoot
      shoot
    end

    def shoot
      self.class.api_not_implemented(self)
    end

    private

    def before_shoot
      logger.warn '*******************************'
      logger.warn " RUBY_VERSION: #{@env.ruby_version}"
      logger.warn " ARGS: #{@env.argv}"
      logger.warn '*******************************'
      parse_options
    end
  end
end
