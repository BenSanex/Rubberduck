class MentorsController < ApplicationController

  def index
  end

  def show
  	@user = User.find(current_user.id)
  	@ratings = Question.where(mentor_id: @user.id)
  end

end