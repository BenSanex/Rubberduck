class Skill < ApplicationRecord
	has_many :questions
	has_many :mentors, through: :expertises
end
