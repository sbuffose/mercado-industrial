require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "creating a user" do
    visit new_user_registration_path
    count = User.count

    fill_in "user_email", with: "john.lennon@gmail.com"
    fill_in "user_first_name", with: "John"
    fill_in "user_last_name", with: "Lennon"
    fill_in "user_phone_number", with: "549111111111"
    fill_in "user_password", with: "12345678"
    fill_in "user_password_confirmation", with: "12345678"

    click_on "Sign up"

    assert_equal User.count, count
  end
end
