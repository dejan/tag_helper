Gem::Specification.new do |s|
  s.name        = "tag_helper"
  s.version     = '0.0.3'
  s.date        = Date.today.to_s

  s.summary     = "Build XHTML tags off the Rails"
  s.description = "TagHelper is a zero dependency, lightweight Ruby lib for building XHTML tags similar to the API provided by Rails' *TagHelper modules."

  s.authors     = ['Dejan Simic']
  s.email       = 'desimic@gmail.com'
  s.homepage    = "http://github.com/dejan/tag_helper"

  # ensure the gem is built out of versioned files
  s.files = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*',
                'README*', 'MIT-LICENSE'] & `git ls-files -z`.split("\0")
end
