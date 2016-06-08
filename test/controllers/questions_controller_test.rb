require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    current_user = User.create(id: 1, username: 'karl', full_name: 'karl welzein', email: 'karl@gmail.com', avatar: "http://conorlastowka.com/wp-content/uploads/2011/12/karl.jpg")
    @question = Question.create(id: 1, student_id: 1)
  end

  test "should show question" do
     get :show, id: @question
     assert_response :success
   end

end
