require "#{File.dirname(__FILE__)}/../test_helper"

class ConfigTest < Test::Unit::TestCase
  include TagHelper

  def test_image_tag
    assert_equal '<img src="1.png" />', image_tag('1.png')
  end

  def test_image_tag2
    assert_equal '<img alt="number one!" src="1.png" />', image_tag('1.png', :alt => 'number one!')
  end

  def test_label_tag2
    assert_equal '<label for="name">name</label>', label_tag('name')
  end

  def test_hidden_field_tag
    assert_equal '<input id="token" value="abc" type="hidden" name="token" />', hidden_field_tag('token', 'abc')
  end

  def test_hidden_field_tag2
    assert_equal '<input id="u" value="dejan" type="text" name="u" />', text_field_tag('u', 'dejan')
  end

end