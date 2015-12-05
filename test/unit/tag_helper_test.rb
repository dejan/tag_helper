require "#{File.dirname(__FILE__)}/../test_helper"

class ConfigTest < Test::Unit::TestCase
  def test_image
    assert_equal(
      '<img src="1.png" />',
      TagHelper.image('1.png'))
  end

  def test_image2
    assert_equal(
      '<img alt="number one!" src="1.png" />',
      TagHelper.image('1.png', alt: 'number one!'))
  end

  def test_label22
    assert_equal(
      '<label for="name">name</label>',
      TagHelper.label('name'))
  end

  def test_hidden_field
    assert_equal(
      '<input id="token" value="abc" type="hidden" name="token" />',
      TagHelper.hidden_field('token', 'abc'))
  end

  def test_hidden_field2
    assert_equal(
      '<input id="u" value="dejan" type="text" name="u" />',
      TagHelper.text_field('u', 'dejan'))
  end

  def test_empty_iframe
    assert_equal(
      '<iframe />',
      TagHelper.iframe)
  end

  def test_iframe
    assert_equal(
      '<iframe width="300" height="200" '\
        'src="http://embed.ted.com/talks/1.html" '\
        'webkitAllowFullScreen="true" mozallowfullscreen="true" />',
      TagHelper.iframe(
        width: 300,
        height: 200,
        src: 'http://embed.ted.com/talks/1.html',
        webkitAllowFullScreen: true,
        mozallowfullscreen: true))
  end

  def test_no_attributes
    assert_equal(
      '<label>Username</label>',
      TagHelper.content('label', 'Username'))
  end

  def test_no_attributes_unary
    assert_equal(
      '<br />',
      TagHelper.unary('br'))
  end
end
