require 'patryn/logger'

module Patryn
  module Composition
    def logger
      @logger ||= Logger.new
    end
  end
end
