require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    current_user = User.create(id: 1, username: 'karl', full_name: 'karl welzein', email: 'karl@gmail.com', avatar: "http://conorlastowka.com/wp-content/uploads/2011/12/karl.jpg")
    @question = questions(:one)
  end

  # test "should show question" do
  #    get :show, id: 1
  #    assert_response :success
  #  end

  test "should create question" do
      assert_difference('Question.count') do
        post :create, question: { student_id: 1, mentor_id: 1, skill_id: 1, title: "Question:", content: "Bears, Beets, Battlestar", tag: "dwight" }
      end
      assert_redirected_to question_path(assigns(:question))
    end

end
