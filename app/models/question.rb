class Question < ApplicationRecord
	belongs_to :mentor, class_name: "User", optional: true
	belongs_to :student, class_name: "User"
	has_one :rating
	belongs_to :skill

  before_save :generate_url

  def generate_url
    poss = ('a'..'z').to_a+('A'..'Z').to_a+('0'..'9').to_a
    url = []
    5.times { url << poss.sample }
    self.codeshare_url = 'https://codeshare.io/' + url.join('')
  end
end
