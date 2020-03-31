FactoryBot.define do
  factory :bidding do
    association :bidder, factory: :user
    product
    status { rand(0..3)}
  end
end
