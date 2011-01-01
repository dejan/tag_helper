require 'tag_helper/version'

Gem::Specification.new do |s|
  s.name        = "tag_helper"
  s.version     = TagHelper::VERSION

  s.authors     = ['Dejan Simic']
  s.email       = 'desimic@gmail.com'
  s.homepage    = "http://github.com/dejan/tag_helper"

  s.summary     = "Build XHTML tags off the Rails"
  s.description = "TagHelper is a zero dependency, lightweight Ruby lib for building XHTML tags similar to the API provided by Rails' *TagHelper modules."

  # ensure the gem is built out of versioned files
  gem.files = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*',
                  'README*', 'LICENSE*'] & `git ls-files -z`.split("\0")
end