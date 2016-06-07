class StudentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def index
  end

  def new
    p params
    @user = User.new
    render :'users/new'
  end

  def show
    @skills = Skill.all
    @question = Question.new
  	@user = current_user
    @questions = @user.asked_questions
    redirect_to root_path unless @current_user.id == @user.id
  end

end
