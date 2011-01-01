tag_helper
==========

TagHelper is a zero dependency, lightweight Ruby lib for building XHTML tags similar to the API provided by Rails' *TagHelper modules.

## Install

    gem install tag_helper


## Example usage

     >> require 'tag_helper'
     => true

     >> include TagHelper
     => Object

     >> image_tag('1.png', :alt => 'number one!')
     => "<img alt="number one!" src="1.png" />"


## Credits

Author: [Dejan Simic](http://github.com/dejan)
