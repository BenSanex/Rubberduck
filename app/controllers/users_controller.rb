class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to student_show_path(@user)
    else
      render :new
    end
  end

  def show
    if logged_in?
      @user = current_user
    end
  end

  private

  def set_user
  end

  def user_params
    params.require(:user).permit(:full_name, :username, :avatar, :email, :password)
  end

end