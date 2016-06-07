class ExpertisesController < ApplicationController
  def new
    @expertise = Expertise.new
  end

  def create
    @expertise = Expertise.new(expert_params)
    @expertise.mentor_id = current_user.id
    if @expertise.save
      redirect_to mentor_path
    else
      render 'new'
    end
  end

  private
    def expert_params
      params.require(:expertise).permit(:skill_id)
    end

    def question_params
      params.require(:question).permit(:content, :title, :skill_id, :tag)
    end

end
