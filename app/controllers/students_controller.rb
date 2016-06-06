class StudentsController < ApplicationController

  def index
  end

  def show
    @skills = Skill.all
    @question = Question.new
  	@user = current_user
    @questions = @user.asked_questions
    redirect_to root unless @current_user.id == @user.id
  end

end
