# Fixture to address script not implementing abstract methods
class MyAbstractScript < Patryn::Base
end

# Fixture to address script with valid standard output
class MyScript < Patryn::Base
  logger_options formatter: (proc do |severity, _datetime, _progname, msg|
                            "#{severity}: #{msg}\n"
                          end),
              level: :debug

  def shoot
    logger.info "Hello world"
    logger.debug "Good bye"
  end
end

# Fixture to address script with valid standard output
class Stdout2FileScript < Patryn::Base
  logger_options device: File.expand_path('../../tmp/test.out', __FILE__),
              formatter: (proc do |severity, _datetime, _progname, msg|
                            "#{severity}: #{msg}\n"
                          end),
              level: :debug

  def shoot
    logger.info "Hello world"
    logger.debug "Good bye"
  end
end

class MyParserScript < Patryn::Base
  def shoot
    logger.debug "PREFIX: #{@options.prefix}"
    logger.debug "PROJECTS: #{@options.projects.join ' '}"
  end

  def opt_parser
    OptionParser.new do |parser|
      parser.on('-pPREFIX', '--prefix PREFIX', 'Prefix of sessions name') do |prefix|
        options.prefix = prefix
      end
      parser.on('-sPROJECTS', '--projects PROJECTS', 'Tmuxinator project names') do |projects|
        options.projects = projects.split(' ')
      end
    end
  end

  def default_options
    OpenStruct.new.tap do |options|
      options.prefix = ''
      options.projects = []
    end
  end
end
