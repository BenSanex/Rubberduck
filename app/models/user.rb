class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
	attr_accessor :email, :full_name, :username, :avatar, :is_mentor, :encrypted_password
	has_many :expertises, foreign_key: :mentor_id
	has_many :skills, through: :expertises 
	has_many :asked_questions, class_name: "Question", foreign_key: :student_id
	has_many :proposed_questions, class_name: "Question", foreign_key: :mentor_id

	def email_changed?
		false
	end
	

end
