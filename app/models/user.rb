class User < ApplicationRecord
	attr_accessor :email
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
	has_many :expertises, foreign_key: :mentor_id
	has_many :skills, through: :expertises 
	has_many :asked_questions, class_name: "Question", foreign_key: :student_id
	has_many :proposed_questions, class_name: "Question", foreign_key: :mentor_id
end
