# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'serverkit/goget/version'

Gem::Specification.new do |spec|
  spec.name          = 'serverkit-goget'
  spec.version       = Serverkit::Goget::VERSION
  spec.authors       = ['Tomohiro TAIRA']
  spec.email         = ['tomohiro.t@gmail.com']

  spec.summary       = %q{Serverkit plug-in for Go package}
  spec.description   = %q{Serverkit plug-in for Go package}
  spec.homepage      = 'https://github.com/Tomohiro/serverkit-goget'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'serverkit', '~> 0.6.5'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
