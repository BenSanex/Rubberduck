class RegistrationsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    p params
    @user = User.new
    render :'users/new'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      if @user.is_mentor
        session[:user_id] = @user.id
        redirect_to mentor_path(@user)
      else
        session[:user_id] = @user.id
        redirect_to student_path(@user)
      end
    else
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:full_name, :username, :avatar, :email, :is_mentor, :password)
    end


end
