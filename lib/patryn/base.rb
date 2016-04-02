require 'patryn/class_methods'
require 'patryn/logger_helper'

module Patryn
  # Base class for scripts execution
  class Base
    extend ClassMethods
    include LoggerHelper

    def shoot
      self.class.api_not_implemented(self)
    end
  end
end
