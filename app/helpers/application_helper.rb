module ApplicationHelper
  def current_user
    @current_user ||= User.find(session[:user_id]) if logged_in?
  end

  def logged_in?
    session[:user_id] != nil
  end

  def check_logged_in
    redirect_to root unless logged_in?
  end

  def check_mentor
    redirect_to root unless @current_user.is_mentor
  end

  def authenticate_user!
    redirect_to root_path unless current_user
  end

end
