class Question < ApplicationRecord
	belongs_to :student
	belongs_to :mentor
	has_one :rating
	belongs_to :skill
	
end
