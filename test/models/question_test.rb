require 'test_helper'

class QuestionTest < ActiveSupport::TestCase

  def setup
    @question = Question.new(student_id: 1)
  end

  def test_question_has_url
    @question.generate_url
    assert @question.codeshare_url.include?("https://codeshare.io")
  end

end
