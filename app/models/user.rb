class User < ApplicationRecord
  	has_secure_password
	has_many :expertises, foreign_key: :mentor_id
	has_many :skills, through: :expertises
	has_many :asked_questions, class_name: "Question", foreign_key: :student_id
	has_many :answered_questions, class_name: "Question", foreign_key: :mentor_id
	has_many :mentor_ratings, through: :answered_questions, source: :rating

	def rating
		ratings = self.mentor_ratings.map { |rating| rating.number }
		ratings.inject { |a,b| a+b }/ratings.length
	end

  def level
    questions = self.proposed_questions
    questions.length / 10
  end
  
end
