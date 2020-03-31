require 'test_helper'

class IndustryTest < ActiveSupport::TestCase
  test "should be valid if all fields are supplied" do
    industry = build(:industry)
    assert industry.save, industry.errors.full_messages
  end

  test "should not be valid if all fields are supplied" do
    industry = build(:industry, name: nil)
    assert_not industry.save, industry.errors.full_messages
  end
end
