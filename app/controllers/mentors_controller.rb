class MentorsController < ApplicationController

  def index
  end

  def show
  	@user = User.find(current_user.id)
  	## Find Rating
  	questions = Question.where(mentor_id: @user.id)
  	all_ratings = questions.map{ |question| question.rating }
  	rating_total = all_ratings.map {|rating| rating.number.to_f }
  	rating  = rating_total.inject(0){|sum,x| sum + x } / rating_total.length
  	@rating = rating.round(1)

  	## Find Skill
  	
  end

end