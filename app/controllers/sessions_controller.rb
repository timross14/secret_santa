class SessionsController < ApplicationController

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Email/Password combination invalid'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to :root
  end
end
