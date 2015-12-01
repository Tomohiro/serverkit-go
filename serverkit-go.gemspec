# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'serverkit/go/version'

Gem::Specification.new do |spec|
  spec.name          = 'serverkit-go'
  spec.version       = Serverkit::go::VERSION
  spec.authors       = ['Tomohiro TAIRA']
  spec.email         = ['tomohiro.t@gmail.com']

  spec.summary       = %q{Serverkit plug-in for Go package}
  spec.description   = %q{Serverkit plug-in for Go package}
  spec.homepage      = 'https://github.com/Tomohiro/serverkit-go'

  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'serverkit', '~> 0.6.5'
  spec.add_development_dependency 'bundler', '~> 1.10'
end
