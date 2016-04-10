require 'optparse'

module Patryn
  # Responsible for parsing script options
  module OptParser
    def parse_options
      return options if options.frozen?
      opt_parser.parse!(@env.argv) if respond_to? :opt_parser
      options.freeze
    end

    def options
      @options ||= default_options
    end

    def default_options
      OpenStruct.new
    end
  end
end
