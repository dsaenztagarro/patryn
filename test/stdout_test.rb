require 'test_helper'

class StdoutTest < Minitest::Test
  def setup
    @script = MyScript.new
  end

  def test_expected_stdout
    result, output = capture_stdout do
      @script.shoot
    end
    assert_equal(output, 'INFO: Hello world')
  end
end
