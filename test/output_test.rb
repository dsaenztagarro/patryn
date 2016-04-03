require 'test_helper'

# Tests related to the output of the script
class OutputTest < Minitest::Test
  include OutputHelper

  TEST_PATH = File.expand_path('../tmp/test.out', __FILE__)
  OUTPUT = "INFO: Hello world\nDEBUG: Good bye\n".freeze

  def test_default_standard_output
    _result, output = self.class.capture_stdout do
      MyScript.new.shoot
    end
    assert_equal(OUTPUT, output)
  end

  def test_output_to_file
    FileUtils.rm_f(TEST_PATH)
    Stdout2FileScript.new.shoot
    assert_equal(OUTPUT, File.readlines(TEST_PATH)[1..-1].join)
  ensure
    FileUtils.rm_f(TEST_PATH)
  end
end
