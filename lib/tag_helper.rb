require 'cgi'

# XHTML tags builder
module TagHelper
  module_function

  def unary(tag, attrs = {})
    "<#{tag_and_attributes(tag, attributes(attrs))} />"
  end

  def content(tag, value, attrs = {})
    start_tag = "<#{tag_and_attributes(tag, attributes(attrs))}>"
    end_tag   = "</#{tag}>"
    [start_tag, escape_html(value), end_tag].join
  end

  def tag_and_attributes(tag, attributes)
    attributes.empty? ? tag : "#{tag} #{attributes}"
  end

  def attributes(hash)
    hash.to_a
      .reject { |_k, v| v.nil? }
      .map { |k, v| %(#{escape_html(k)}="#{escape_html(v)}") }.join(' ')
  end

  def escape_html(str)
    CGI.escapeHTML(str.to_s)
  end
end
