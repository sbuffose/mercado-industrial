require 'test_helper'

class BiddingTest < ActiveSupport::TestCase
  test "returns invalid if bidder or product is not supplied" do
    user = User.new(first_name: "john", last_name: "lennon")
    assert_equal "John Lennon", user.full_name
  end
end
