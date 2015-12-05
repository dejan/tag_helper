fail 'Tests require Ruby 1.9 for ordered hash feature' if RUBY_VERSION.to_f < 1.9
require 'rubygems'
require 'test/unit'

require File.dirname(__FILE__) + '/../lib/tag_helper'
