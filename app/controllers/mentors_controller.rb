class MentorsController < ApplicationController

  def index
  end

  def show
  	@user = User.find(current_user.id)
  	questions = Question.where(mentor_id: @user.id)
  	ratings = questions.map do |question|
  		Rating.where(id: question.rating_id)
  	end

  	ratings_total = ratings.map do |rating|
  		rating.number
  	end

  	@ratings = ratings_total.inject(0){|sum,x| sum + x } / ratings_total.length
  end

end