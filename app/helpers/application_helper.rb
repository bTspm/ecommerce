module ApplicationHelper
  include Pagy::Frontend

  def flash_class(level)
    case level
    when "info"
      "alert alert-info"
    when "success"
      "alert alert-success"
    when "error"
      "alert alert-danger"
    when "warning"
      "alert alert-warning"
    else
      "Unkown Flash Level"
    end
  end

  def fontawesome_icon(name_icon_with_style, text = nil, html_options = {})
    text, html_options = nil, text if text.is_a?(Hash)

    content_class = name_icon_with_style
    content_class << " #{html_options[:class]}" if html_options.key?(:class)
    html_options[:class] = content_class

    html = content_tag(:i, nil, html_options)
    html << ' ' << text.to_s unless text.blank?
    html
  end
end
