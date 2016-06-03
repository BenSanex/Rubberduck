class QuestionsController < ApplicationController
  def index
  end

  def show
  	@user = User.find(current_user.id)
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      ActionCable.server.broadcast 'questions',
        content: @question.content,
        title: @question.title
      head :ok
    end
  end

  private

  def question_params
    params.require(:question).permit(:content, :title)
  end

end
