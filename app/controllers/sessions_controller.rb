class SessionsController < ApplicationController

  def new
    render "new"
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      render sessions_new_path
    end
  end

  def logout
    session.clear
    redirect_to :root
  end

end