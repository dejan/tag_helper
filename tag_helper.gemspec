Gem::Specification.new do |gem|
  gem.name        = 'tag_helper'
  gem.version     = '0.1.0'

  gem.summary     = 'Lightweight Ruby lib for building XHTML tags'
  gem.description = 'Zero dependency, lightweight Ruby lib for building XHTML tags similar to the API provided by Rails` *TagHelper modules'

  gem.author      = 'Dejan Simic'
  gem.email       = 'desimic@gmail.com'
  gem.homepage    = 'https://github.com/dejan/tag_helper'
  gem.license     = 'MIT'

  gem.files       = Dir['README.md', 'lib/**/*.rb']
end
