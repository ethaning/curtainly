class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :prepare_contact_form
  before_action :prepare_social_links

  private

  def prepare_social_links
    @instagram_url = SocialLink.last.instagram_url
    @facebook_url = SocialLink.last.facebook_url
  end

  def prepare_contact_form
    @contact = Contact.new
  end
end
