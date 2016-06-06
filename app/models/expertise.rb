class Expertise < ApplicationRecord
	belongs_to :mentor, class_name: "User"
	belongs_to :skill

end
