class ApplicationController < ActionController::Base

  def confirm_logged_in
  	unless session[:user_id]
  		flash[:notice] = "Please log in"
  		redirect_to login_path

  	else
  		@current_user = User.find(session[:user_id])
  		@users = User.joins(:user_id)


  	end
	end
	 

end
