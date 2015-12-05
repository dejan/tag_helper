tag_helper
==========

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

TagHelper.unary(:img, src: '1.png', alt: 'number one!'))
# => '<img src="1.png" alt="number one!" />'

TagHelper.unary('br')
# => '<br />'

TagHelper.content(:label, 'Name', for: 'name'))
# => '<label for="name">Name</label>'

TagHelper.content(:p, '<script>alert(0)</script>')
# => '<p>&lt;script&gt;alert(0)&lt;/script&gt;</p>'
```

## LICENSE

Copyright (c) 2015 Dejan Simic

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
