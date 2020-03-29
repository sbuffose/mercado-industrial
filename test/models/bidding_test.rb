require 'test_helper'

class BiddingTest < ActiveSupport::TestCase
  test "returns invalid if bidder or product is not supplied" do
    no_product = Bidding.new(bidder: users(:seb))
    no_bidder = Bidding.new(product: products(:new_inyector))
    bid = Bidding.new(bidder: users(:seb), product: products(:new_inyector))

    assert_not no_product.save
    assert_not no_bidder.save
    assert bid.save
  end
end
