class Skill < ApplicationRecord
	has_many :questions
	has_many :mentors, through: :expertises, class_name: "User"
end
