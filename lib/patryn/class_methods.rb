module Patryn
  # Responsible for adding class methods to base class
  module ClassMethods
    %w(
      logger_options
    ).each do |field|
      define_method field do |value = nil|
        return instance_variable_get("@#{field}") unless value
        instance_variable_set("@#{field}", value)
      end
    end

    def api_not_implemented(obj)
      caller.first =~ /in \`(.+)\'/
      method_name = Regexp.last_match(1)
      raise NotImplementedError,
            "#{obj.class.name} needs to implement '#{method_name}'"
    end
  end
end
