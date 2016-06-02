class Expertise < ApplicationRecord
	has_many :mentors
	has_many :skills

end
