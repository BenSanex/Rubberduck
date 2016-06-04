class StudentsController < ApplicationController

  def index
  end

  def show
    @skills = Skill.all
    @question = Question.new
  	@user = User.find(current_user.id)

  	questions = Question.where(student_id: @user.id)
  	@questions = questions.sort{|a,b| b.id <=> a.id}
  end

end
