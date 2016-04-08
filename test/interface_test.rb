require 'test_helper'

# Responsible for testing the interface of the script
class InterfaceTest < Minitest::Test
  def setup
    @script = MyAbstractScript.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::Patryn::VERSION
  end

  def test_it_responds_to_run
    assert_respond_to @script, :run
  end

  def test_raise_not_implemented_error
    assert_raises(NotImplementedError) { @script.shoot }
  end
end
