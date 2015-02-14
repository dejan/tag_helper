require 'rexml/document'

module TagHelper

  def image_tag(src, html_options = {})
    unary_tag(:img, html_options.merge(:src => src))
  end

  def label_tag(label_for, label=nil, html_options = {})
    content_tag(:label, label || label_for, html_options.merge(:for => label_for))
  end

  def text_field_tag(name, value, html_options = {})
    unary_tag(:input, html_options.merge(:id => name, :value => value, :type => 'text', :name => name))
  end

  def hidden_field_tag(name, value, html_options = {})
    unary_tag(:input, html_options.merge(:id => name, :value => value, :type => 'hidden', :name => name))
  end

  def unary_tag(tag, attrs = {})
    "<#{tag_and_attributes(tag, attributes(attrs))} />"
  end

  def content_tag(tag, value, attrs = {})
    b = "<#{tag_and_attributes(tag, attributes(attrs))}>"
    v = normalize(value)
    e = "</#{tag}>"
    [b, v, e].join
  end

  def tag_and_attributes(tag, attributes)
    attributes.empty?? tag : "#{tag} #{attributes}"
  end

  def attributes(hash)
    hash.to_a.
      reject { |k,v| v.nil? }.
      map { |k, v| %{#{k}="#{normalize v}"} }.join(' ')
  end

  def normalize(s)
    REXML::Text::normalize(s)
  end

  extend self
end
