module ApplicationHelper
  def current_page_testimonials?
    controller.action_name == 'testimonials' && controller.controller_name == 'home'
  end

  def current_page_about_us?
    controller.action_name == 'about_us' && controller.controller_name == 'home'
  end

  def non_homepage_section?
    current_page_testimonials? || current_page_about_us?
  end
end
