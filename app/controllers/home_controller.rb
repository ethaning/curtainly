class HomeController < ApplicationController
  def index
    @form = Form.new
    @contact = Contact.new
  end

  def form
    # binding.pry
    redirect_to root_path
  end

  def mail
  end

  private

  def form_params
    params.require(:form).permit(:name, :email, :message)
  end
end
