class User < ApplicationRecord
	 devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

	has_many :skills, through: :expertises 
	has_many :questions, as: :mentor, foreign_key: "mentor_id"
	has_many :questions, as: :student, foreign_key: "student_id"
end
