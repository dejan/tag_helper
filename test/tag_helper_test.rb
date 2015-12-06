require 'test_helper'

class ConfigTest < Test::Unit::TestCase
  include TagHelper

  def test_tag
    assert_equal(
      '<img src="1.png" alt="number one!" />',
      tag(:img, src: '1.png', alt: 'number one!'))
  end

  def test_tag_with_no_attributes
    assert_equal(
      '<br />',
      tag(:br))
  end

  def test_tag_with_block
    assert_equal(
      '<label for="name">Name</label>',
      tag(:label, for: 'name') { 'Name' })
  end

  def test_content_tag_with_no_attributes
    assert_equal(
      '<label>Username</label>',
      tag(:label) { 'Username' })
  end

  def test_nesting
    assert_equal(
      '<form><input type="text" /></form>',
      tag(:form) { tag(:input, type: 'text') })
  end
end
