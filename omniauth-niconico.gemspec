# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/niconico/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-niconico'
  spec.version       = OmniAuth::Niconico::VERSION
  spec.authors       = ['dwango']
  spec.email         = ['rubygems@dwango.co.jp']
  spec.summary       = 'Niconico OAuth2 Strategy for OmniAuth.'
  spec.description   = 'Niconico OAuth2 Strategy for OmniAuth.'
  spec.homepage      = 'http://github.com/dwango/omniauth-niconico'
  spec.license       = 'MIT'
  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'omniauth-oauth2'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
end
