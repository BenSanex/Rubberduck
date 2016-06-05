class User < ApplicationRecord
  	has_secure_password
	has_many :expertises, foreign_key: :mentor_id
	has_many :skills, through: :expertises
	has_many :asked_questions, class_name: "Question", foreign_key: :student_id
	has_many :answered_questions, class_name: "Question", foreign_key: :mentor_id

	def rating
		questions = self.answered_questions
		if questions.length > 0
	    all_ratings = questions.map{ |question| question.rating }
	  	ratings_value = all_ratings.map { |rating| rating.number.to_f }
	  	rating  = ratings_value.inject(0){|sum,x| sum + x } / ratings_value.length
	    return rating.round(1)
	  else
	  	return 0
	  end
	end
end
