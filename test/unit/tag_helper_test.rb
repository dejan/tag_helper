require "#{File.dirname(__FILE__)}/../test_helper"

class ConfigTest < Test::Unit::TestCase
  def test_unary
    assert_equal(
      '<img src="1.png" alt="number one!" />',
      TagHelper.unary(:img, src: '1.png', alt: 'number one!'))
  end

  def test_unary_with_no_attributes_unary
    assert_equal('<br />', TagHelper.unary('br'))
  end

  def test_content
    assert_equal(
      '<label for="name">Name</label>',
      TagHelper.content(:label, 'Name', for: 'name'))
  end

  def test_content_with_no_attributes
    assert_equal(
      '<label>Username</label>',
      TagHelper.content('label', 'Username'))
  end

  def test_html_escaping_content
    assert_equal(
      '<p>&lt;script&gt;alert(0)&lt;/script&gt;</p>',
      TagHelper.content(:p, '<script>alert(0)</script>'))
  end

  def test_html_escaping_attribute
    assert_equal(
      '<hr class="&lt;script&gt;alert(0)&lt;/script&gt;" />',
      TagHelper.unary(:hr, class: '<script>alert(0)</script>'))
  end
end
