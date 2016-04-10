module Patryn
  # Reponsible for providing script execution context
  class Environment
    attr_reader :argv

    def new(argv = ARGV)
      @argv = argv
    end

    def ruby_version
      RUBY_VERSION
    end
  end
end
