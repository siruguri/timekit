lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'timekit/version'

Gem::Specification.new do |s|
  s.add_dependency 'rest-client', '~> 1.6'
  s.name        = 'timekit'
  s.version     = '0.1.0'
  s.date        = '2016-06-02'
  s.description = 'A gem to interact with the timekit.io api'
  s.summary     = s.description
  s.authors     = ['Michael Gauthier']
  s.email       = 'michael.gauthier@gmail.com'
  s.files       = ['lib/timekit.rb']
  s.homepage    = 'http://rubygems.org/gems/timekit'
  s.license     = 'MIT'
  s.require_paths = %w(lib)
  s.files = %w(CHANGELOG.md CONTRIBUTING.md LICENSE.md README.md timekit.gemspec) + Dir['lib/**/*.rb']
  spec.version = Timekit::Version
end
