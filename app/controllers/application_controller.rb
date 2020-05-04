require './config/environment'
require 'rack-flash'

class ApplicationController < Sinatra::Base
  enable :sessions
  use Rack::Flash

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
      set :session_secret, "secret" # <= Change this, go and auto generate a password.
  end

  get "/" do
    erb :homepage
  end
  # include if statement that checks if user is logged in, if so redirect to logout.

end
