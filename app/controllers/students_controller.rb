class StudentsController < ApplicationController

  def index
  end

  def show
    @skills = Skill.all
    @question = Question.new
  	@user = current_user
    @questions = @user.asked_questions.where('created_at >= ?', 14.days.ago)
    p @questions
  end

end
