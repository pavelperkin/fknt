module ApplicationHelper
  
  def e(*args, &block)
    escape_javascript *args, &block
  end

  def flash_message
    flash.map do |key, value|
      content_tag(:div, value, :class => "flash #{key}")
    end.join.html_safe
  end

end
