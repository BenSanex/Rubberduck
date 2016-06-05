class MentorsController < ApplicationController

  def index
  end

  def show
  	@user = User.find(current_user.id)
  	## Find Rating
  	questions = Question.where(mentor_id: @user.id)
  	if questions != []
      all_ratings = questions.map{ |question| question.rating }
    	rating_total = all_ratings.map do |rating|
        if rating != nil
          rating.number.to_f
        else
          rating = 0
        end
    	rating  = rating_total.inject(0){|sum,x| sum + x } / rating_total.length
    	@rating = rating.round(1)
      end
    end
  	## Find Skill
  end

end
