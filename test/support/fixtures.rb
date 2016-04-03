# Fixture to address script not implementing abstract methods
class MyAbstractScript < Patryn::Base
end

# Fixture to address script with valid standard output
class MyScript < Patryn::Base
  log_options formatter: (proc do |severity, _datetime, _progname, msg|
                            "#{severity}: #{msg}"
                          end),
              level: :debug

  def shoot
    logger.info "Hello world\n"
    logger.debug "Good bye\n"
  end
end

# Fixture to address script with valid standard output
class Stdout2FileScript < Patryn::Base
  log_options device: File.expand_path('../../tmp/test.out', __FILE__),
              formatter: (proc do |severity, _datetime, _progname, msg|
                            "#{severity}: #{msg}"
                          end),
              level: :debug

  def shoot
    logger.info "Hello world\n"
    logger.debug "Good bye\n"
  end
end
