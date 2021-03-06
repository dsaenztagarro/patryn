# require 'codeclimate-test-reporter'
# CodeClimate::TestReporter.start
# require 'coveralls'
# Coveralls.wear!

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'patryn'
require 'minitest/autorun'
require 'minitest/mock'
require 'byebug'

# Loads support files
Dir["#{File.dirname(__FILE__)}/support/*.rb"].each { |file| require file }
