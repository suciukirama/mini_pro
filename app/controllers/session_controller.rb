class SessionController < ApplicationController
 protect_from_forgery prepend: true

  # before_action :confirm_logged_in, :except => [:attempt]

  def menu
  	redirect_to session_new_path
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

  def login
    #show login html
  end

  def attempt
    @user = User.new
    if params[:name].present? && params[:password].present?
      found_user = User.where(:name => params[:name]).first
      if found_user 
          authorized_user = found_user.authenticate(params[:password])
      end
    end 

    if authorized_user
      session[:user_id] = authorized_user.id
      flash[:notice] = "You are now logged in"
      redirect_to root_path

    else
      flash.now[:notice] = "Invalid username/password combination"
      render('login')
    end
   end

  def logout
    session[:user_id] = nil
    flash[:notice] = 'logged out'
    redirect_to root_path
  end

  def admin
  	@post_blog = PostBlog.all
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
