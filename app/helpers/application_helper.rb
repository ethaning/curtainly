module ApplicationHelper
  def current_page_testimonials?
    controller.action_name == 'testimonials' && controller.controller_name == 'home'
  end
end
