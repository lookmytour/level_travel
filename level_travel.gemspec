# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'level_travel/version'

Gem::Specification.new do |spec|
  spec.name = 'level_travel'
  spec.version = LevelTravel::VERSION
  spec.authors = ['Pavel Rodionov']
  spec.email = ['pasha.rod@mail.ru']
  spec.required_ruby_version = '>= 2.5' # rubocop:disable Gemspec/RequiredRubyVersion

  spec.summary = 'Wrapper for level.travel API'
  spec.description = 'Wrapper for level.travel API'
  spec.homepage = 'https://github.com/lookmytour/level_travel'
  spec.license = 'MIT'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/lookmytour/level_travel'
  spec.metadata['changelog_uri'] = 'https://github.com/lookmytour/level_travel/blob/master/CHANGELOG.md'

  spec.files = Dir.glob('lib/**/*') + Dir.glob('bin/*')
  spec.bindir = 'bin'
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'dry-struct', '~> 1.0'
  spec.add_dependency 'dry-types', '~> 1.0'
  spec.add_dependency 'dry-validation', '~> 1.4'
  spec.add_dependency 'faraday'
  spec.add_dependency 'oj'

  spec.add_development_dependency 'bundler', '>= 1.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'reek', '~> 6.0.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.16.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.1'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'webmock', '~> 3.7'
end
