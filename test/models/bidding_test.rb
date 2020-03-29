require 'test_helper'

class BiddingTest < ActiveSupport::TestCase
  test "returns invalid if bidder or product is not supplied" do
    no_product = Bidding.new(bidder: users(:seb))
    no_bidder = Bidding.new(product: products(:new_inyector))
    bid = Bidding.new(bidder: users(:seb), product: products(:new_inyector))

    assert_equal no_product.valid?, false
    assert_equal no_bidder.valid?, false
    assert_equal bid.valid?, true
  end
end
