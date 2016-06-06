class MentorsController < ApplicationController

  def index
  end

  def show
  	@user = User.find(current_user.id)
    @badges = @user.badges
  end

end
