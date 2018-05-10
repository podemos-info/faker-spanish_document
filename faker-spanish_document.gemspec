# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faker/spanish_document/version'

Gem::Specification.new do |spec|
  spec.name          = 'faker-spanish_document'
  spec.version       = Faker::SpanishDocument::VERSION
  spec.authors       = ['Leonardo Diez']
  spec.email         = ['leiodd@gmail.com']

  spec.summary       = 'Fake document numbers from Spain'
  spec.description   = 'Generates random spanish DNI and NIE numbers. Also generates generic random passport numbers.'
  spec.homepage      = 'http://github.com/podemos-info/faker-spanish_document'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*', 'Rakefile', 'README.md']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_dependency             'faker',   '~> 1.8'
end
