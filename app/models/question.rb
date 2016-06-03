class Question < ApplicationRecord
	belongs_to :mentor, class_name: "User"
	belongs_to :student, class_name: "User"
	has_one :rating
	belongs_to :skill
	
end
