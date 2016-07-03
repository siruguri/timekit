# frozen_string_literal: true
source 'https://rubygems.org'

gem 'rake'

platforms :jruby do
  gem 'jruby-openssl'
  gem 'tins', '~> 1.6.0'
  gem 'mime-types', '~> 2.0'
end

group :development do
  gem 'pry'
end

group :test do
  gem 'rspec'
  gem 'rspec-mocks'
  gem 'fabrication'
  gem 'faker'
  gem 'webmock', '~> 2.0'
  gem 'simplecov'
  gem 'coveralls'
  gem 'rubocop', require: false
end

gemspec
