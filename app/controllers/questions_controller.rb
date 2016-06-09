class QuestionsController < ApplicationController
  # before_action :is_user?, only: [:show]

  def show
    @user = current_user
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)
    @question.student_id = current_user.id
    if @question.save
      ActionCable.server.broadcast 'questions',
        content: @question.content,
        title: @question.title,
        skill: @question.skill.sub_type,
        tag: @question.tag,
        url: @question.id
      # head :ok
      redirect_to @question
      # redirect_to "https://rubberduckapp.herokuapp.com/questions/#{@question.id}"
    end
  end

  def update
    @user = current_user
    @question = Question.find(params[:question_id])
    puts @question
    if @user.is_mentor
      @question.update(solved?: true, mentor_id: @user.id)
      redirect_to mentor_path
    else
      @question.update(solved?: true)
      redirect_to student_path
    end
  end


  private

  def is_user?
    question = Question.find(params[:id])
    student = User.find(question.student_id)
    current_user.id == question.mentor_id || current_user == student
  end

  def ssl_configured?
    !Rails.env.development?
  end

  def question_params
    params.require(:question).permit(:content, :title, :skill_id, :tag)
  end

end
