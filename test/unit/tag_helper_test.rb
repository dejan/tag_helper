require "#{File.dirname(__FILE__)}/../test_helper"

class ConfigTest < Test::Unit::TestCase
  def test_tag
    assert_equal(
      '<img src="1.png" alt="number one!" />',
      TagHelper.tag(:img, src: '1.png', alt: 'number one!'))
  end

  def test_tag_with_no_attributes
    assert_equal(
      '<br />',
      TagHelper.tag(:br))
  end

  def test_tag_with_block
    assert_equal(
      '<label for="name">Name</label>',
      TagHelper.tag(:label, for: 'name') { 'Name' })
  end

  def test_content_tag_with_no_attributes
    assert_equal(
      '<label>Username</label>',
      TagHelper.tag(:label) { 'Username' })
  end

  def test_html_escaping_content
    assert_equal(
      '<p>&lt;script&gt;alert(0)&lt;/script&gt;</p>',
      TagHelper.tag(:p) { '<script>alert(0)</script>' })
  end

  def test_html_escaping_attribute
    assert_equal(
      '<hr class="&lt;script&gt;alert(0)&lt;/script&gt;" />',
      TagHelper.tag(:hr, class: '<script>alert(0)</script>'))
  end
end
