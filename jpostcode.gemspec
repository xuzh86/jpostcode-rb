# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jpostcode/version'

Gem::Specification.new do |spec|
  spec.name          = 'jpostcode-ait'
  spec.version       = Jpostcode::VERSION
  spec.authors       = ['xuzh']
  spec.email         = ['xzh@alpha-it-system.com']

  spec.summary       = 'A Ruby implementation for Japan postcode a it.'
  spec.description   = 'A Ruby implementation for Japan postcode .'
  spec.homepage      = 'https://github.com/xuzh86/jpostcode-rb'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files         += Dir['jpostcode-data/data/**/*.json']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'guard', '~> 0'
  spec.add_development_dependency 'guard-bundler', '~> 0'
  spec.add_development_dependency 'guard-rubocop', '~> 0'
  spec.add_development_dependency 'guard-rspec', '~> 0'
  spec.add_development_dependency 'pry', '~> 0'
  spec.add_development_dependency 'pry-byebug', '~> 0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 0'
end
