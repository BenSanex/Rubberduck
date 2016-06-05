class RatingsController < ApplicationController

	def new
		@rating = Rating.new
		@question = Question.find(params[:question_id])
	end

	def create
		@question = Question.find(params[:question_id])
		@rating = Rating.new(number: params[:rating][:number], question_id: params[:question_id])
		if @rating.save
			redirect_to student_path(current_user)
		else
			render :new
		end
	end

end