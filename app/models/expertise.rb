class Expertise < ApplicationRecord
	has_many :mentors, class_name: "User"
	has_many :skills

end
