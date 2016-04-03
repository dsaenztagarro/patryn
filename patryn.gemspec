# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'patryn/version'

Gem::Specification.new do |spec|
  spec.name          = 'patryn'
  spec.version       = Patryn::VERSION
  spec.authors       = ['David Saenz']
  spec.email         = ['david.saenz.tagarro@gmail.com']

  spec.summary       = 'Framework for scripts execution'
  spec.description   = 'Framework for scripts execution'
  spec.homepage      = 'https://github.com/dsaenztagarro/patryn'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'

  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'reek'
  spec.add_development_dependency 'cane'

  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'coveralls'
end
