class MyAbstractScript < Patryn::Base
end

class MyScript < Patryn::Base
  log_level ::Logger::DEBUG
  log_formatter(proc do |severity, _datetime, _progname, msg|
    "#{severity}: #{msg}"
  end)

  def shoot
    logger.info 'Hello world'
    logger.close
  end
end
