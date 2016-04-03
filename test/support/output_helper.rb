# Provides helpers for testing the output of scripts
module OutputHelper
  def self.included(base)
    base.extend ClassMethods
  end

  # Class methods included by OutputHelper
  module ClassMethods
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
  end
end
