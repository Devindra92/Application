class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  	@record = Record.all
  		if params[:search]
   			@records = Record.search(params[:search]).order("created_at DESC")
  		else
    		@records = Record.all.order("created_at DESC")
  		end
  end
end
