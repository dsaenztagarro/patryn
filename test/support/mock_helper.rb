module MockHelper
  def mock_environment(opts = {})
    environment = MiniTest::Mock.new
    environment.expect(:ruby_version, opts[:ruby_version] || '2.3.0')
    environment.expect(:argv, opts[:argv] || [])
    environment
  end
end
