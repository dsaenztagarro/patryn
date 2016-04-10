require 'test_helper'

# Tests related to options parsing
class OptParserTest < Minitest::Test
  include MockHelper

  def test_options_are_frozen
  end

  def test_mandatory_sessions_option_passed
    env = mock_environment argv: ["--projects", "project_patryn project_my"]
    script = MyParserScript.new(env)
    script.parse_options
    assert_equal %w(project_patryn project_my), script.options.projects
  end

  def test_optional_prefix_option_passed
    environment = mock_environment argv: %w(--prefix=project_)
    script = MyParserScript.new(environment)
    script.parse_options
    assert_equal 'project_', script.options.prefix
  end

  def test_optional_prefix_option_missing
    script = MyParserScript.new(mock_environment)
    script.parse_options
    assert_equal '', script.options.prefix
  end
end
