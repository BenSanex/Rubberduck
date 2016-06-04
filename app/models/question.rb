class Question < ApplicationRecord
	belongs_to :mentor, class_name: "User", optional: true
	belongs_to :student, class_name: "User", optional: true
	has_one :rating
	belongs_to :skill, optional: true
end
