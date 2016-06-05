class SessionsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    p params
    render "new"
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      if @user.is_mentor
        redirect_to mentor_path(@user)
      else
        redirect_to student_path(@user)
      end
    else
      render login_path
    end
  end

  def destroy
    session.clear
    redirect_to :root
  end

end
