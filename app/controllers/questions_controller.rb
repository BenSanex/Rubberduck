class QuestionsController < ApplicationController
  def index
  end

  def show
    @question = Question.find(params[:id])
  	@user = User.find(current_user.id)
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      ActionCable.server.broadcast 'questions',
        content: @question.content,
        title: @question.title,
        skill: @question.skill.sub_type,
        tag: @question.tag,
        url: @question.id
      head :ok
    end
  end

  private

  def question_params
    params.require(:question).permit(:content, :title, :skill_id, :tag)
  end

end
