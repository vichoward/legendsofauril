# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def link_to_with_active(name, options ={})
    current = current_page?(options)
    html_options = current ? {:class => "active"} : nil
    link_to name, options, html_options
  end
end
