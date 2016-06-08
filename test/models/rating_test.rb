require 'test_helper'

class RatingTest < ActiveSupport::TestCase

  def setup
    @rating = Rating.new(number: 5, question_id: 1)
  end

  def test_rating_has_number
    assert @rating.number == 5
  end

  def test_rating_has_question
    assert @rating.question_id == 1
  end

end
