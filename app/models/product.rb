class Product < ApplicationRecord
  belongs_to :industry
  belongs_to :owner, class_name: "User"
  has_many :biddings

  enum status: { published: 0, unpublished: 1, expired: 2, blacklisted: 3 }
  enum target: { sale: 0, donate: 1, recycle: 2 }
  enum condition: { brand_new: 0, good: 1, regular: 2, needs_reparation: 3, not_working: 3 }
  enum currency: { ars: 0, usd: 1 }

  validates :title, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 100 }
  validates :status, presence: true, inclusion: { in: :status }
  validates :target, presence: true, inclusion: { in: :target }
  validates :phone_number, presence: true
  validates :email, presence: true, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :address, presence: true
  validates :expires_at, presence: true
  validates :condition, presence: true, inclusion: { in: :condition }
  validates :pick_up, presence: true

  validates :currency, presence: true, inclusion: { in: :currency }, unless: -> { target.donate? }
  validates :price, format: { with: /\A\d+\z/, message: "solamente numeros" }
  validates :age, presence: true, if: -> { target.donate? || target.recycle? }
end
