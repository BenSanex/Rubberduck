class MentorsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]
  def index
  end

  def new
    p params
    @user = User.new
    @mentor = true
    render :'users/new'
  end

  def show
    @expertise = Expertise.new
  	@user = User.find(current_user.id)
    @badges = @user.badges
  end

end
