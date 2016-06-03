class StudentsController < ApplicationController

  def index
  end

  def show
    @question = Question.new
  	@user = User.find(current_user.id)
  end

end
