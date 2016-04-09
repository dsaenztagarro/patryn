require 'test_helper'

# Tests related to the output of the script
class OutputTest < Minitest::Test
  include OutputHelper
  include MockHelper

  TEST_PATH = File.expand_path('../tmp/test.out', __FILE__)
  OUTPUT = <<-output
WARN: *******************************
WARN:  RUBY_VERSION: 2.3.0
WARN:  ARGS: []
WARN: *******************************
INFO: Hello world
DEBUG: Good bye
output

  def test_default_standard_output
    _result, output = self.class.capture_stdout do
      MyScript.new(mock_environment).run
    end
    assert_equal(OUTPUT, output)
  end

  def test_output_to_file
    FileUtils.rm_f(TEST_PATH)
    Stdout2FileScript.new(mock_environment).run
    assert_equal(OUTPUT, File.readlines(TEST_PATH)[1..-1].join)
  ensure
    FileUtils.rm_f(TEST_PATH)
  end
end
