class UserController < ApplicationController
  def create
  end

  def update
  end

  def show_user
  end

  def index 
	@user = User.all  	
  end
end
