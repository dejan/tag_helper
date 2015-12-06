TagHelper
=========

Lightweight Ruby lib for building XHTML tags.

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

## Code Status

[![Circle CI](https://circleci.com/gh/dejan/tag_helper.svg?style=svg&circle-token=cefb9d11fb03efefcf9e35bbc29d9eef68bd980e)](https://circleci.com/gh/dejan/tag_helper)

## License

TagHelper is released under the [MIT License](https://raw.githubusercontent.com/dejan/tag_helper/master/MIT-LICENCE).
