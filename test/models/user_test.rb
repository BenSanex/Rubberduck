require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @karl = User.new(username: 'karl', full_name: 'karl welzein', email: 'karl@gmail.com', avatar: "http://conorlastowka.com/wp-content/uploads/2011/12/karl.jpg")
  end

  def test_user_has_username
    assert @karl.username == 'karl'
  end

  def test_user_has_fullname
    assert @karl.full_name == 'karl welzein'
  end

  def test_user_has_email
    assert @karl.email == 'karl@gmail.com'
  end

  def test_user_has_avatar
    assert @karl.avatar == 'http://conorlastowka.com/wp-content/uploads/2011/12/karl.jpg'
  end

  def test_user_default_not_mentor
    assert @karl.is_mentor == nil
  end

  def test_user_has_rating
    assert @karl.rating == 0
  end

  def test_user_has_level
    assert @karl.level == 0
  end

  def test_user_has_start_badge_on_initialize
    assert @karl.badges == ['start']
  end


end
