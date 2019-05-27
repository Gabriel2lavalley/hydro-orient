class PagesController < ApplicationController
	before_action :authenticate_user!, only: [:load_map]
  def index
  end 

  def log_in
  end

  def load_map
  	
  end

  def contact_us
  	
  end

  def submit_contact_us_details
    Emailer.send_contact_us_details(params[:contact_us][:email],params[:contact_us][:subject],params[:contact_us][:description]).deliver
  	flash[:notice]="Your message has been sent, We will get back to you as soon as possible"
  	redirect_to pages_contact_us_path
  end

end 