module Patryn
  # Reponsible for providing script execution context
  class Environment
    attr_reader :argv

    def new(argv = ARGV)
      @argv = argv
    end

    def self.ruby_version
      @ruby_version ||= `ruby --version`.delete("\n")
    end
  end
end
