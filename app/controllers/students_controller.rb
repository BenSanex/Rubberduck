class StudentsController < ApplicationController

  def index
  end

  def show
    @skills = Skill.all
    @question = Question.new
  	@user = User.find(current_user.id)

    @questions = @user.asked_questions.where('created_at >= ?', 14.days.ago)
  end

end
