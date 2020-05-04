class ReviewsController < ApplicationController

  get '/member_homepage' do
    if Helpers.is_logged_in?(session)
      @user = Helpers.current_user(session)
      erb :'reviews/member_homepage'
    else
      redirect to '/login'
    end
  end


end
