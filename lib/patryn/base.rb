require 'patryn/class_methods'
require 'patryn/instance_methods'
require 'patryn/composition'

module Patryn
  class Base
    extend ClassMethods
    include InstanceMethods
    include Composition
  end
end
