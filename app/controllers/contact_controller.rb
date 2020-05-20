class ContactController < ApplicationController
  def index
    @contact = Contact.new(params[:contact])
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to root_url
      flash[:success] = 'Thank you for your message! Red will get back to you soon'
    else
      render :index
    end
  end

end
