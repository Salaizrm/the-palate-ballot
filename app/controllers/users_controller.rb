class UsersController < ApplicationController

#need to add error for if user tries to create account with an already existing username or email.
  post '/signup' do
    @user = User.create(params)
  if params[:username] == "" || params[:email] == "" || params[:password] == ""
    flash[:signup_error] = erb :'flash_messages/invalid_signup'
    redirect to '/'
  else
    @user.save
    session["user_id"] = @user.id
      redirect to "/member_homepage"
    end
  end

  get '/login' do
    if Helpers.is_logged_in?(session)
      redirect to '/logout'
    end
    erb :'users/login'
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect to '/member_homepage'
    else
      flash[:login_error] = erb :'flash_messages/invalid_login'
      redirect to '/login'
    end
  end

  get '/logout' do
    if Helpers.is_logged_in?(session)
      @user = Helpers.current_user(session)
      erb :'users/logout'
    else
      redirect to '/'
    end
  end

  post '/logout' do
    session.clear
    redirect to '/'
  end

  get '/profile/:slug' do
    @user = User.find_by(params[:slug])
    erb :'users/profile'
  end

end

# def self.current_user(session)
#   @user = User.find(session[:user_id])
# end
#
# def self.is_logged_in?(session)
#   !!session[:user_id]
# end
