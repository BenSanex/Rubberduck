class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    @user = current_user
    if @user.is_mentor
    	"/mentors/#{@user.id}"
		else
			"/students/#{@user.id}"
		end
  end
  
end