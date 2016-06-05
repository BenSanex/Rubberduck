class User < ApplicationRecord
  	has_secure_password
	has_many :expertises, foreign_key: :mentor_id
	has_many :skills, through: :expertises
	has_many :asked_questions, class_name: "Question", foreign_key: :student_id
	has_many :proposed_questions, class_name: "Question", foreign_key: :mentor_id

	def rating
		questions = Question.where(mentor_id: self.id)
	  	all_ratings = questions.map{ |question| question.rating }
      if all_ratings[0] != nil
  	  	rating_total = all_ratings.map {|rating| rating.number.to_f }
  	  	if rating_total.length > 0
  	  		rating  = rating_total.inject(0){|sum,x| sum + x } / rating_total.length
  	  		return rating.round(1)
  	  	else
  	  		return 0
  	  	end
      else
        return 0
      end
	end


end
