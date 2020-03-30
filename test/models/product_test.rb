require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "be valid if all fields are supplied" do
    product = build(:product)
    assert product.save, product.errors.full_messages
  end

  test "return invalid if any fields is missing" do
    assert_not build(:product, title: nil).save
    assert_not build(:product, description: nil).save
    assert_not build(:product, address: nil).save
    assert_not build(:product, expires_at: nil).save
    assert_not build(:product, phone_number: nil).save
    assert_not build(:product, email: nil).save
  end

  test "should update email && phone_number if supplied" do
    product = build(:product, email: "test@gmail.com", phone_number: "5499999999")
    assert_equal "test@gmail.com", product.email
    assert_equal "5499999999", product.phone_number
  end
end
