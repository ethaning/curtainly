class HomeController < ApplicationController
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

  def form_params
    params.require(:form).permit(:name, :email, :message)
  end
end
