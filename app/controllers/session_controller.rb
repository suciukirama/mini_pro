class SessionController < ApplicationController
  def new

  end

  def signup
  	@user = User.new
  end

  def create
  	@user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticaticate(params[:user][:password])
      session[:user_id] = @user_id
      redirect_to session_new_path(@user)
    else
      redirect_to session_sigup_path
    end
  end

#   def create2
# @user = User.new(user_params)

#     respond_to do |format|
#       if @user.save
#         format.html { redirect_to @user, notice: 'User was successfully created.' }
#         format.json { render :show, status: :created, location: @user }
#       else
#         format.html { render :new }
#         format.json { render json: @user.errors, status: :unprocessable_entity }
#       end
#     end

  # end
end
