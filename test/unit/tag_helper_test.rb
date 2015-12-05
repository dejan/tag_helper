require "#{File.dirname(__FILE__)}/../test_helper"

class ConfigTest < Test::Unit::TestCase
  def test_image_tag
    assert_equal '<img src="1.png" />', TagHelper.image_tag('1.png')
  end

  def test_image_tag2
    assert_equal '<img alt="number one!" src="1.png" />', TagHelper.image_tag('1.png', alt: 'number one!')
  end

  def test_label_tag2
    assert_equal '<label for="name">name</label>', TagHelper.label_tag('name')
  end

  def test_hidden_field_tag
    assert_equal '<input id="token" value="abc" type="hidden" name="token" />', TagHelper.hidden_field_tag('token', 'abc')
  end

  def test_hidden_field_tag2
    assert_equal '<input id="u" value="dejan" type="text" name="u" />', TagHelper.text_field_tag('u', 'dejan')
  end

  def test_no_attributes
    assert_equal '<label>Username</label>', TagHelper.content_tag('label', 'Username')
  end

  def test_no_attributes_unary
    assert_equal '<br />', TagHelper.unary_tag('br')
  end
end
