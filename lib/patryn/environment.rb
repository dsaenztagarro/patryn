module Patryn
  # Reponsible for providing script execution context
  class Environment
    attr_reader :argv

    def initialize(args = ARGV)
      @argv = args
    end

    def ruby_version
      RUBY_DESCRIPTION
    end
  end
end
