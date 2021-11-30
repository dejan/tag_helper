# frozen_string_literal: true

Gem::Specification.new do |gem|
  gem.name        = 'tag_helper'
  gem.version     = '0.5.0'

  gem.required_ruby_version = '>= 2.5.0'
  gem.summary     = 'Build XHTML tags with minimal API'
  gem.description = 'Zero dependency, lightweight API for building XHTML tags'

  gem.author      = 'Dejan Simic'
  gem.email       = 'desimic@gmail.com'
  gem.homepage    = 'https://github.com/dejan/tag_helper'
  gem.license     = 'MIT'

  gem.add_development_dependency 'rake', '~> 13.0.6'
  gem.add_development_dependency 'rubocop', '~> 1.23'
  gem.add_development_dependency 'test-unit', '~> 3.5'

  gem.files = Dir['README.md', 'lib/**/*.rb']
  gem.metadata = {
    'rubygems_mfa_required' => 'true'
  }
end
