TagHelper
=========

1-method API for building XHTML tags.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tag_helper'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install tag_helper
```

## Usage

There's only one method to be used: `tag`.

* Use the first argument to indicate the tag name.
* Other arguments will map to tag attributes.
* Use block for tag content. If the block is not provided, the tag will be self-closing.

```ruby
require 'tag_helper'

include TagHelper

tag(:img, src: '1.png', alt: 'number one!')
# => '<img src="1.png" alt="number one!" />'

tag(:br)
# => '<br />'

tag(:label, for: 'name') { 'Name' }
# => '<label for="name">Name</label>'

tag(:div) do
  tag(:form) do
    tag(:input, type: 'text')
  end
end
# => '<div><form><input type="text" /></form></div>'
```

## License

TagHelper is released under the [MIT License](https://raw.githubusercontent.com/dejan/tag_helper/master/MIT-LICENCE).
