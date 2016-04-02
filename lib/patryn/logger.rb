module Patryn
  class Logger
    def initialize(stdout = $stdout)
      @stdout = stdout
    end

    %w(info error).each do |level|
      define_method level do |message|
        @stdout.write "#{level.upcase}: #{message}"
      end
    end
  end
end
