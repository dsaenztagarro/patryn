class MyAbstractScript < Patryn::Base
end

class MyScript < Patryn::Base
  def shoot
    logger.info 'Hello world'
  end
end
