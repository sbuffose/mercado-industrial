require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized first name and last name" do
    user = build(:user, first_name: "john", last_name: "lennon")
    assert_equal "John Lennon", user.full_name
  end

  test "full_name returns email when not first_name and last_name not provided" do
    user = build(:user, first_name: nil, last_name: nil, email: "john.lennon@gmail.com")
    assert_equal "john.lennon@gmail.com", user.full_name
  end

  test "returns invalid when not email, first_name, last_name, password or phone_number are not provided" do
    assert_not build(:user, last_name: nil).save
    assert_not build(:user, first_name: nil).save
    assert_not build(:user, phone_number: nil).save
    assert_not build(:user, email: nil).save
    assert_not build(:user, password: nil).save
  end

  test "returns valid when email, first_name, last_name, phone_number and password are provided" do
    assert     build(:user).save
  end
end
