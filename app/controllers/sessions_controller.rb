class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "You done logged in"
      redirect_to '/'
    else
      flash[:warning] = "That's not right"
      redirect = '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You logged out!"
    redirect_to '/login'
  end
end
