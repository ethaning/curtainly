class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    # binding.pry
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to root_path
    else
      flash.now[:error] = 'Cannot send message.'
      # render :new
      redirect_to root_path
    end
  end
end