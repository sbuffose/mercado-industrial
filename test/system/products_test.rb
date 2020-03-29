require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the landing page" do
    visit "/"

    # save_and_open_screenshot
    assert_selector "h1", text: "Awesome Products"
  end
end
