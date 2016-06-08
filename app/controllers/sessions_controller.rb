class SessionsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    if request.xhr?
      render "/sessions/_form", layout: false
    else
      render "new"
    end
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      if @user.is_mentor
        session[:mentor] = true
        redirect_to mentor_path
      else
        session[:mentor] = false
        redirect_to student_path
      end
    else
      @message = 'Invalid Email/Password Combination'
      render 'new'
    end
  end

  def destroy
    session.clear
    redirect_to :root
  end

end
