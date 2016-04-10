require 'optparse'

module Patryn
  # Responsible for parsing script options
  module OptParser
    def self.included(base)
      base.send :include, InstanceMethods
      base.extend ClassMethods
    end

    # Class methods provided by OptParser
    module ClassMethods # :nodoc:
      def default_options
        OpenStruct.new
      end
    end

    # Instance methods provided by OptParser
    module InstanceMethods # :nodoc:
      def parse_options
        return options if options.frozen?
        opt_parser.parse!(@env.argv) if respond_to? :opt_parser, true
        options.freeze
      end

      def options
        @options ||= self.class.default_options
      end
    end
  end
end
