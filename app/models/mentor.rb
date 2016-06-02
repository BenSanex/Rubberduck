class Mentor < User
	has_many :skills, through: :expertises
	has_many :questions
end
