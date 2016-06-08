class QuestionsController < ApplicationController

  def show
    ActionCable.server.broadcast 'rooms',
    @question = Question.find(params[:id])
  	@user = User.find(current_user.id)
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
    end
  end

  def update
    @user = current_user
    @question = Question.find(params[:question_id])
    puts @question
    if @user.is_mentor
      @question.update(solved?: true, mentor_id: @user.id)
      redirect_to mentor_path(@user)
    else
      @question.update(solved?: true)
      redirect_to @user
    end
  end


  private

  def ssl_configured?
    !Rails.env.development?
  end

  def question_params
    params.require(:question).permit(:content, :title, :skill_id, :tag)
  end

end
