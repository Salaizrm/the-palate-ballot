class UsersController < ApplicationController

  post '/signup' do
    @user = User.create(params)
  if params[:username] == "" || params[:email] == "" || params[:password] == ""
    redirect to '/'
  else
    @user.save
    session["user_id"] = @user.id
      redirect to "/login"
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
      flash[:message]
      erb :'users/login'
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

  get '/users/:slug' do
    @user = User.find_by(params[:slug])
    erb :'/users/show'
  end

end

# def self.current_user(session)
#   @user = User.find(session[:user_id])
# end
#
# def self.is_logged_in?(session)
#   !!session[:user_id]
# end
