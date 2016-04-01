require 'patryn/class_methods'
require 'patryn/instance_methods'

module Patryn
  class Base
    extend ClassMethods
    include InstanceMethods
  end
end
