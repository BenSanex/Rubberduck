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
    badge_array << 'java' if self.skills_array.include?('Java')
    badge_array << 'html' if self.skills_array.include?('HTML')
    badge_array << 'css' if self.skills_array.include?('CSS')
    badge_array << 'javascript' if self.skills_array.include?('JavaScript')
    badge_array << 'C++' if self.skills_array.include?('C++')
    badge_array << 'python' if self.skills_array.include?('Python')
    badge_array << 'five_star' if self.mentor_ratings.map { |rating| rating.number }.include?(5)
    badge_array << 'earned_wings' if self.answered_questions.length >= 1
    badge_array << 'five_questions' if self.answered_questions.length >= 5
    badge_array << 'ten_questions' if self.answered_questions.length >= 10
    badge_array << 'two_skills' if self.skills_array.length >= 1
    badge_array << 'level_up' if self.level > 1
    badge_array << 'start'
  end

  def skills_array
    self.skills.map { |skill| skill.sub_type }
  end
end
