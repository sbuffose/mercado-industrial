require 'test_helper'

class BiddingTest < ActiveSupport::TestCase
  test "should be valid if all fields are supplied" do
    bidding = build(:bidding)
    assert bidding.save, bidding.errors.full_messages
  end

  test "should not be valid if all fields are supplied" do
    assert_not build(:bidding, bidder: nil).save
    assert_not build(:bidding, product: nil).save
  end
end
