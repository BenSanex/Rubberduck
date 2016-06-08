require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    current_user = User.create(id: 1, username: 'karl', full_name: 'karl welzein', email: 'karl@gmail.com', avatar: "http://conorlastowka.com/wp-content/uploads/2011/12/karl.jpg")
    @question = questions(:one)
  end



  test "should create question" do
      # assert_difference('Question.count') do
        post(:create, question: { mentor_id: 1, skill_id: 1, title: "Question:", content: "Bears, Beets, Battlestar", tag: "dwight" })
      # end
        assert_not_nil Question.find_by(title: "Question:")
    end

end
