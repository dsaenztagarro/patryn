require 'test_helper'

class PatrynTest < Minitest::Test
  def setup
    @script = MyAbstractScript.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::Patryn::VERSION
  end

  def test_it_responds_to_shoot
    assert_respond_to @script, :shoot
  end

  def test_raise_not_implemented_error
    assert_raises(NotImplementedError) { @script.shoot }
  end
end
