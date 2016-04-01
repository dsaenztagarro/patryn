module Patryn
  module ClassMethods
    def api_not_implemented(obj)
      caller.first.match(/in \`(.+)\'/)
      method_name = $1
      raise NotImplementedError.new("#{obj.class.name} needs to implement '#{method_name}'")
    end
  end
end
