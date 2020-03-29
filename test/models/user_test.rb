require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized first name and last name" do
    user = User.new(first_name: "john", last_name: "lennon")
    assert_equal "John Lennon", user.full_name
  end

  test "full_name returns email when not first_name and last_name not provided" do
    user = User.new(email: "john.lennon@gmail.com")
    assert_equal "john.lennon@gmail.com", user.full_name
  end
end
