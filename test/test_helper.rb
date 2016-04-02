$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'patryn'

require 'minitest/autorun'
require 'byebug'
require 'fixtures'

def capture_stdout(&_block)
  stdout_orig = $stdout
  stdout_mock = StringIO.new
  $stdout = stdout_mock
  begin
    result = yield
  ensure
    $stdout = stdout_orig
  end
  [result, stdout_mock.string]
end
