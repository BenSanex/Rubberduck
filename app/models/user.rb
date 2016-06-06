class User < ApplicationRecord
  	has_secure_password
	has_many :expertises, foreign_key: :mentor_id
	has_many :skills, through: :expertises, source: :skill
	has_many :asked_questions, class_name: "Question", foreign_key: :student_id
	has_many :answered_questions, class_name: "Question", foreign_key: :mentor_id
	has_many :mentor_ratings, through: :answered_questions, source: :rating

	def rating
		ratings = self.mentor_ratings.map { |rating| rating.number }
		if ratings.length > 0
			ratings.inject { |a,b| a+b }/ratings.length
		else
			return 0
		end
	end

  def level
    questions = self.answered_questions
    questions.length / 10
  end

  def badges
    badge_array = []
    badge_array << '1' if self.level > 1
    badge_array << '2' if self.level > 2
    badge_array << '3' if self.level > 3
    badge_array << 'ruby' if self.skills_array.include?('Ruby')
    badge_array << 'C#' if self.skills_array.include?('C#')
  end

  def skills_array
    self.skills.map { |skill| skill.sub_type }
  end
end
