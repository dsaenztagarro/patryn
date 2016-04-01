module Patryn
  module InstanceMethods
    def shoot
      self.class.api_not_implemented(self)
    end
  end
end
