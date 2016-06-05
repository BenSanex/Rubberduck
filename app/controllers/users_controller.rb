class UsersController < ApplicationController

  def show
    if logged_in?
      @user = current_user
      if @user.is_mentor
        session[:user_id] = @user.id
        redirect_to mentor_path(@user)
      else
        session[:user_id] = @user.id
        redirect_to student_path(@user)
      end
    end
  end

  private
  def logged_in?
    session[:user_id] != nil
  end


  def set_user
  end

  def user_params
    params.require(:user).permit(:full_name, :username, :avatar, :email, :is_mentor, :password)
  end

end
