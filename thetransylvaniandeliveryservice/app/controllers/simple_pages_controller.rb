class SimplePagesController < ApplicationController
  def about
  end

  def contact
  end
  
  def landing_page
    @products = Product.limit(5)
  end
  
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
    redirect_to root_url, notice: "Thank you. We have received your message and will respond as soon as possible. :)"
  end
end
