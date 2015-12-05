Gem::Specification.new do |gem|
  gem.name        = 'tag_helper'
  gem.version     = '0.4.0'

  gem.summary     = 'Build XHTML tags with minimal API'
  gem.description = 'Zero dependency, lightweight API for building XHTML tags'

  gem.author      = 'Dejan Simic'
  gem.email       = 'desimic@gmail.com'
  gem.homepage    = 'https://github.com/dejan/tag_helper'
  gem.license     = 'MIT'

  gem.add_development_dependency 'rake', '~> 10.4', '>= 10.4.2'
  gem.add_development_dependency 'test-unit', '~> 3.1', '>= 3.1.5'
  gem.add_development_dependency 'rubocop', '~> 0.35.1'

  gem.files = Dir['README.md', 'lib/**/*.rb']
end
