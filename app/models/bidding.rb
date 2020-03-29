class Bidding < ApplicationRecord
  belongs_to :bidder, class_name: "User", foreign_key: "user_id"
  belongs_to :product

  enum status: { requested: 0, done: 1, cancelled: 2, no_response: 3 }

  validates :product, presence: true
  validates :bidder, presence: true
  validates :status, presence: true, inclusion: { in: :status }
end
