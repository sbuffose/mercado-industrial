require 'test_helper'

class BiddingTest < ActiveSupport::TestCase
  test "returns invalid if bidder or product is not supplied" do
    no_product = Bid.new(bidder: user(:seb))
    no_bidder = Bid.new(product: product(:new_inyector))
    bid = Bid.new(bidder: user(:seb), product: product(:new_inyector))

    assert_equal no_product.valid?, false
    assert_equal no_bidder.valid?, false
    assert_equal bid.valid?, true
  end
end
