module Patryn
  module ClassMethods
    %w(
      log_level
      log_datetime_format
      log_formatter
    ).each do |field|
      define_method field do |value = nil|
        return instance_variable_get("@#{field}") unless value
        instance_variable_set("@#{field}", value)
      end
    end

    def api_not_implemented(obj)
      caller.first =~ /in \`(.+)\'/
      method_name = Regexp.last_match(1)
      raise NotImplementedError.new("#{obj.class.name} needs to implement '#{method_name}'")
    end
  end
end
