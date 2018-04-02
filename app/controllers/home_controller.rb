class HomeController < ApplicationController
  before_action :prepare_contact_form

  def index
  end

  def form
    redirect_to root_path
  end

  def mail
  end

  def about_us
    @about = AboutUs.last
  end

  def testimonials

  end

  private

  def prepare_contact_form
    @contact = Contact.new
  end

  def form_params
    params.require(:form).permit(:name, :email, :message)
  end
end
