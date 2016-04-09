require 'test_helper'

# Tests related to options parsing
class OptParserTest < Minitest::Test
  include MockHelper

  def test_mandatory_sessions_option_passed
    env= mock_environment argv: ["--sessions='project_patryn project_my'"]
    script = MyScript.new(env)
    assert_equal(script.sessions, %w(project_patryn project_my))
  end

  def test_mandatory_sessions_option_missing
    assert_raises(OptParser::NoArgumentError) { MyScript.new(mock_environment) }
  end

  def test_optional_prefix_option_passed
    environment = mock_environment argv: %w(--prefix=project)
    script = MyScript.new(environment)
    assert_equal(script.prefix, 'project')
  end

  def test_optional_prefix_option_missing
    script = MyScript.new(mock_environment)
    assert_equal(script.prefix, 'project')
  end
end
