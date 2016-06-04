class StudentsController < ApplicationController

  def index
  end

  def show
    @skills = Skill.all
    @question = Question.new
  	@user = User.find(current_user.id)
  end

end
