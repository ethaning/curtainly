module ApplicationHelper
  def current_page_testimonials?
    current_page? action: 'testimonials'
  end
end
