class PagesController < ApplicationController
	before_action :authenticate_user!, only: [:load_map]
  def index
  end 

  def log_in
  end

  def load_map
  	
  end

end 