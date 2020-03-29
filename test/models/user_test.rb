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

  test "returns invalid when not email, first_name, last_name, phone_number or password are not provided" do
    no_phone = User.new(email: "john.lennon@gmail.com", first_name: "john", last_name: "lennon", password: 123456)
    no_first_name = User.new(email: "john.lennon@gmail.com", phone_number: "549111111111", last_name: "lennon", password: 123456)
    no_last_name = User.new(email: "john.lennon@gmail.com", phone_number: "549111111111", first_name: "john", password: 123456)
    no_email = User.new(first_name: "john", phone_number: "549111111111", last_name: "lennon", password: 123456)
    no_password = User.new(first_name: "john", phone_number: "549111111111", email: "john.lennon@gmail.com", last_name: "lennon")
    users = [no_phone, no_first_name, no_last_name, no_email, no_password]

    users.each do |user|
      assert_not user.save
    end
  end

  test "returns valid when email, first_name, last_name, phone_number and password are not provided" do
    user = User.new(email: "john.lennon@gmail.com", first_name: "john", last_name: "lennon", phone_number: "5491111111", password: 123456)

    assert user.save
  end
end
